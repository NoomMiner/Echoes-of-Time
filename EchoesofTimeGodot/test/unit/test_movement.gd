extends GutTest

var PlayerScene = load("res://player.tscn")
var player : CharacterBody2D

func before_each():
	print("got here")
	player = PlayerScene.instantiate()
	add_child_autofree(player)
	
	

func  test_left():
	# simulate action down
	Input.action_press("left")
	# simulate 0.1 seconds of physics engine
	player._physics_process(0.1)
	# simulate action up	
	Input.action_release("left")
	# test player moved in -x
	assert_true(player.velocity.x < 0)
	
func test_right():
	# simulate action down
	Input.action_press("right")
	# simulate 0.1 seconds of physics engine
	player._physics_process(0.1)
	# simulate action up	
	Input.action_release("right")
	# test player moved in +x
	assert_true(player.velocity.x > 0)
	
func test_up():
	# simulate action down
	Input.action_press("up")
	# simulate 0.1 seconds of physics engine
	player._physics_process(0.1)
	# simulate action up	
	Input.action_release("up")
	# test player moved in +y
	assert_true(player.velocity.y < 0)
	
func test_down():
	# simulate action down
	Input.action_press("down")
	# simulate 0.1 seconds of physics engine
	player._physics_process(0.1)
	# simulate action up	
	Input.action_release("down")
	# test player moved in -y
	assert_true(player.velocity.y > 0)
