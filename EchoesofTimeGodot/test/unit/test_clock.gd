extends GutTest

@test
func testClock():

  ## Set Up

  level = preload("res://node_2d.tscn").instantiate()
  add_child(level)
  player = level.get_node("CharacterBody2D")

  clock = .preload("res://clock.tscn")
  add_child(clock)

  sprite = clock.get_node("AnimatedSprite2D")
  label = clock.get_node("RichTextLabel")

  ## Check initial state
    assert_eq(level.state, 0)
    assert_true(sprite.visible)
    assert_false(label.visible)
    
  # move player over clock
      player.global_position = clock.global_position

  # Check 'hasClock' state
    assert_eq(level.state, 1)
    assert_false(sprite.visible)
    assert_true(label.visible)

  # simulate pressing 'q'
    var ev = InputEventKey.new()
    ev.keycode = KEY_Q
    ev.pressed = true
    level._input(ev)

  # check 'hasKey' state
    assert_eq(level.state, 2)
    assert_false(sprite.visible)
    assert_false(label.visible)
