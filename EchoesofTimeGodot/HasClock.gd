class_name HasClock extends State

func processInput(ev):
	if Input.is_key_pressed(KEY_Q):
		get_child(2).assoText = get_node("Door/usekeyprompt")
		get_node("Clock/RichTextLabel").visible = false
		if (get_node("Door/doorlocked").visible == true):
			get_node("Door/doorlocked").visible = false
			get_node("Door/usekeyprompt").visible = true
		emit_signal("goNext")
