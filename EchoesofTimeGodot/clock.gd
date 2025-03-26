extends Node2D

var taken = false
signal pickedUp

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if taken==false:
		get_child(0).visible = false
		get_child(2).visible = true
		taken = true
		emit_signal("pickedUp")
