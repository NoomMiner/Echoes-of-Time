extends Node2D

var assoText = RichTextLabel
var isClose = false
var isEaten = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assoText = get_child(1)
	set_process_input(true) 

func _input(ev):
	if Input.is_key_pressed(KEY_Q):
		if (isClose == true):
			if (not isEaten):
				assoText.visible = false
				assoText = get_child(2)
				isEaten = true
				get_child(3).visible = true
				get_child(4).visible = false
				get_child(5).visible = true
			else:
				assoText.visible = true

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if (not isEaten):
		assoText.visible = true
	isClose = true

func _on_area_2d_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	assoText.visible = false
	isClose = false
