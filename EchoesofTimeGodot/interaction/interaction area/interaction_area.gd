extends Area2D
class_name InteractionArea

@export var action_name: String = "interact"
@export var is_interactable = true


var interact: Callable = func():
	pass


func _on_body_entered(body: Node2D) -> void:
	InteractionManager.reg_area(self)


func _on_body_exited(body: Node2D) -> void:
	InteractionManager.unreg_area(self)
