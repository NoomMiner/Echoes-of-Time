extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process_input(true) 

func _input(ev):
	if Input.is_key_pressed(KEY_R):
		if (get_child(2).isClose == true):
			get_tree().change_scene_to_file("res://node_2d.tscn")
