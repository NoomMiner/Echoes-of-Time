extends Node2D

var taken = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if (taken):
		get_child(0).visible = false
		get_child(2).visible = true
	pass
	
#func bodyDetection(_body):
	#print("HELLO")
	#visible = false
