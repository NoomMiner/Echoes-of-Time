extends Node2D

var assoText = RichTextLabel
var isClose = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assoText = get_child(1)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(isClose)
	pass

func _on_area_2d_body_exited(body: Node2D) -> void:
	assoText.visible = false
	isClose = false
func _on_area_2d_body_entered(body: Node2D) -> void:
	assoText.visible = true
	isClose = true
