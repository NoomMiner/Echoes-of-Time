extends Node2D

var current := InitialState.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process_input(true) 

func _input(ev):
	current.processInput(ev)
	
