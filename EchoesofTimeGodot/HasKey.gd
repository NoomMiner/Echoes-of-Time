class_name HasKey extends State

# in HasKey
func processInput(ev):
	if Input.is_key_pressed(KEY_Q):
		if (get_child(2).isClose == true):
			print("GO TO NEXT ROOM")
			#get_tree().change_scene_to_file("res://cakeScene.tscn")
