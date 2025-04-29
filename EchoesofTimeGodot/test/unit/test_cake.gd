extends GutTest

var level
var cake
var player

func before_each():
  level = preload("res://cakeScene.tscn").instantiate()
  add_child(level)

  cake = level.get_node("cake")
  ogPrompt = cake.get_node("eatcake")
  noPrompt = cake.get_node("nocake")
  congratsPrompt = cake.get_node("congrats")
  ogSprite = cake.get_node("freshCake")
  eatenSprite = cake.get_node("cakeEaten")
  player = level.get_node("CharacterBody2D")

func after_each():
  level.queue_free()

@test
func test_appearance_player_away():
    assert_false(ogPrompt.visible)
    assert_false(congratsPrompt.visible)
    assert_false(eatenSprite.visible)
    assert_true(ogSprite.visible)


@test
func test_appearance_player_near():
    player.global_position = cake.global_position

    assert_true(ogPrompt.visible)
    assert_false(congratsPrompt.visible)
    assert_false(eatenSprite.visible)
    assert_true(ogSprite.visible)

@test
func test_eating_cake():
    player.global_position = cake.global_position

    # simulate pressing 'q'
    var ev = InputEventKey.new()
    ev.keycode = KEY_Q
    ev.pressed = true
    level._input(ev)

    assert_false(ogPrompt.visible)
    assert_false(noPrompt.visible)
    assert_true(congratsPrompt.visible)
    assert_true(eatenSprite.visible)
    assert_false(ogSprite.visible)

@test
func test_easter_egg():
    player.global_position = cake.global_position

    # simulate pressing 'q', twice
    var ev = InputEventKey.new()
    ev.keycode = KEY_Q
    ev.pressed = true
    level._input(ev)
    level._input(ev)

    assert_true(noPrompt.visible)
