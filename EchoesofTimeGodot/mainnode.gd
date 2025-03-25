extends Node2D
var state = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process_input(true) 

func _input(ev):
	if Input.is_key_pressed(KEY_Q):
		if (state == 2 && get_child(2).isClose == true):
			# go to cake scene
			pass
		if state == 1:
			# do some kind of animation
			state = 2
			get_child(2).assoText = get_node("Door/usekeyprompt")
			get_node("Clock/RichTextLabel").visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_clock_picked_up() -> void:
	state = 1
