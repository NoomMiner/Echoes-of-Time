extends Node2D
var state = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process_input(true) 

func _input(ev):
	if Input.is_key_pressed(KEY_Q):
		if (state == 2 && get_child(2).isClose == true):
			get_tree().change_scene_to_file("res://cakeScene.tscn")
		if state == 1:
			# do some kind of animation
			state = 2
			get_child(2).assoText = get_node("Door/usekeyprompt")
			get_node("Clock/RichTextLabel").visible = false
			if (get_node("Door/doorlocked").visible == true):
				get_node("Door/doorlocked").visible = false
				get_node("Door/usekeyprompt").visible = true


func _on_clock_picked_up() -> void:
	state = 1
