extends Node2D

@onready var label = $Label

const base_text = "[E]"

var active_areas  := []
var interactable := true

func _process(delta):
	if active_areas and interactable:
		active_areas.sort_custom(_sort_by_distance)
		if active_areas[0].is_interactable:
			label.text = base_text + active_areas[0].action_name
			label.show()
	else:
		label.hide()
		
func _sort_by_distance(area1, area2):
	var area1_dist = global_position.distance_to(area1.global_position)
	var area2_dist = global_position.distance_to(area2.global_position)
	return area1_dist < area2_dist
	
func _input(event):
	if event.is_action_pressed("interact") and interactable:
		if active_areas:
			interactable = false
			label.hide()
		
			await active_areas[0].interact.call()
			
			interactable = true


func _on_interaction_area_area_entered(area: Area2D) -> void:
	active_areas.push_back(area)


func _on_interaction_area_area_exited(area: Area2D) -> void:
	active_areas.erase(area)
