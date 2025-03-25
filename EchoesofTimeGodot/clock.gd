extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	interaction_area.interact = _on_interact



func _on_interact():
	print("got clock")
	
#func bodyDetection(_body):
	#print("HELLO")
	#visible = false
