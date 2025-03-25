extends StaticBody2D

@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D


func _ready() -> void:
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	print("You are not tired")
