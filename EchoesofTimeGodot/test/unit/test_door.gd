extends GutTest

var level
var player

func before_each():
    level = preload("res://node_2d.tscn").instantiate()
    add_child(level)

    # create fake 'change scene' function
    gut.double(level.get_tree(), "change_scene_to_file")

    player = level.get_node("CharacterBody2D")

func after_each():
    level.queue_free()

func simulate_q_press(target):
    var ev = InputEventKey.new()
    ev.keycode = KEY_Q
    ev.pressed = true
    target._input(ev)

func test_no_key():
    assert_false(level.get_node("Door/usekeyprompt").visible)
    assert_false(level.get_node("Door/doorlocked").visible)

    player.global_position = level.get_node("Door").global_position

    assert_true(level.get_node("Door/doorlocked").visible)
    assert_false(level.get_node("Door/usekeyprompt").visible)

    simulate_q_press(level)

    assert_not_called(level.get_tree(), "change_scene_to_file", "Attempts to change scene without key")


@test
func test_state_0():
    level.state = 0
    test_no_key()

@test
func test_state_1():
    level.state = 1
    test_no_key()

@test
func test_state_2_player_away():
    level.state = 2

    assert_false(level.get_node("Door/doorlocked").visible)
    assert_false(level.get_node("Door/usekeyprompt").visible)

    simulate_q_press(level)

    assert_not_called(level.get_tree(), "change_scene_to_file", "Attempts to change scene while away")

@test
func test_state_2_player_near():
    level.state = 2
    player.global_position = level.get_node("Door").global_position

    assert_false(level.get_node("Door/doorlocked").visible)
    assert_true(level.get_node("Door/usekeyprompt").visible)

    assert_not_called(level.get_tree(), "change_scene_to_file", "Attempts to change scene before pressing 'q'")

    simulate_q_press(level)

    assert_called(level.get_tree(), "change_scene_to_file", "Does not attempt to change scene")
