extends GutTest

var level
var player

func simulate_key_press(action: String, duration_sec: float = 0.2):
    # Simulate an input action (left, right, up, down)
    gut.presser.action_press(action)
    await get_tree().create_timer(duration_sec).timeout
    gut.presser.action_release(action)
    await get_tree().process_frame

func simulate_q_press():
    var ev = InputEventKey.new()
    ev.keycode = KEY_Q
    ev.pressed = true
    level._input(ev)
    await get_tree().process_frame

func test_movement(player):
    # Move around
    var start_x = player.global_position.x
    var start_y = player.global_position.y

    await simulate_key_press("right", 0.3)
    assert_true(player.global_position.x > start_x, "Player should move right")
    await simulate_key_press("down", 0.3)
    assert_true(player.global_position.y > start_y, "Player should move down")
    await simulate_key_press("left", 0.3)
    assert_eq(player.global_position.x, start_x, "Player should move left")
    await simulate_key_press("up", 0.3)
    assert_eq(player.global_position.y, start_y, "Player should move up")

    # Run into a wall
    await simulate_key_press("left", 5)
    var edge_x = player.global_position.x
    await simulate_key_press("left", 5)
    assert_eq(player.global_position.x, edge_x, "Player should run into wall")

@test
func test_first_room():
    level = preload("res://node_2d.tscn").instantiate()
    add_child(level)
    gut.double(level.get_tree(), "change_scene_to_file")
    player = level.get_node("CharacterBody2D")

    # Step 1: Load level
    assert_true(player != null)
    assert_true(player.global_position.x < 100, "Player should start on left side")
    assert_false(level.get_node("Door/doorlocked").visible, "Door locked text should not appear yet")
    assert_true(level.get_node("Clock/AnimatedSprite2D").visible, "Clock sprite should appear")
    assert_false(level.get_node("Clock/RichTextLabel").visible, "Use clock prompt should not appear yet")

    # Step 2: Move around
    # Step 3: Run into a wall
    await test_movement(player)

    # Step 4: Approach door without clock
    player.global_position = level.get_node("Door").global_position
    await get_tree().process_frame
    assert_true(level.get_node("Door/doorlocked").visible, "Door locked text should appear")
    await simulate_q_press()
    assert_not_called(level.get_tree(), "change_scene_to_file", "Should not change scene yet")

    # Step 5: Walk away from door
    await simulate_key_press("left", 1)
    assert_false(level.get_node("Door/doorlocked").visible, "Door locked text should disappear when away")

    # Step 6: Pick up clock
    player.global_position = level.get_node("Clock").global_position
    await get_tree().process_frame
    # check that sprite disappears and prompt appears
    assert_false(level.get_node("Clock/AnimatedSprite2D").visible, "Clock sprite should disappear")
    assert_true(level.get_node("Clock/RichTextLabel").visible, "Use clock prompt should appear")

    # Step 7: Press Q to use clock
    await simulate_q_press()
    assert_false(level.get_node("Clock/RichTextLabel").visible, "Use clock prompt should disappear")

    # Step 8: Go back to door
    player.global_position = level.get_node("Door").global_position
    await get_tree().process_frame
    assert_false(level.get_node("Door/doorlocked").visible, "Door locked text should not appear")
    assert_true(level.get_node("Door/usekeyprompt").visible, "Door use-key text should appear")

    # Step 9: Press Q to open door (move to cake room)
    await simulate_q_press()
    assert_called(level.get_tree(), "change_scene_to_file", "Should attempt to change to cake room scene")


    level.queue_free()



@test
func test_cake_room():
    level = preload("res://cakeScene.tscn").instantiate()
    add_child(level)

    gut.double(level.get_tree(), "change_scene_to_file")

    # shortcuts
    cake = level.get_node("cake")
    ogPrompt = cake.get_node("eatcake")
    noPrompt = cake.get_node("nocake")
    congratsPrompt = cake.get_node("congrats")
    ogSprite = cake.get_node("freshCake")
    eatenSprite = cake.get_node("cakeEaten")
    player = level.get_node("CharacterBody2D")

    # check initial scene
    assert_false(ogPrompt.visible)
    assert_false(congratsPrompt.visible)
    assert_false(eatenSprite.visible)
    assert_true(ogSprite.visible)

    # test movement
    await test_movement(player)

    # Go to cake
    player.global_position = cake.global_position
    await get_tree().process_frame
    assert_true(ogPrompt.visible, "Cake eating prompt should appear")
    assert_true(ogSprite.visible, "Cake should not be eaten yet")

    # Press Q to eat cake
    await simulate_q_press()
    assert_false(ogSprite.visible, "Cake should be eaten")
    assert_true(eatenSprite.visible, "Cake should be eaten")
    assert_false(ogPrompt.visible, "Prompt should change")
    assert_true(congratsPrompt.visible, "Congrats prompt should appear")

    # press Q at cake again
    await simulate_q_press()
    assert_true(noPrompt.visible, "Already eaten prompt should appear")

    # Restart via door
    await simulate_key_press("left", 2)
    await simulate_q_press()
    assert_called(level.get_tree(), "change_scene_to_file", "Should attempt to change to og room scene")
