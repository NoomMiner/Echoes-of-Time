extends Node2D

@onready var player = get_tree().get_first_node_in_group("player")
@onready var label = $Label

const base_text = "[E]"

var active_areas = []
var interactable = true

func reg_area(area: InteractionArea):
	active_areas.push_back(area)

func unreg_area(area: InteractionArea):
	var index = active_areas.find(area)
	if index != -1:
		active_areas.remove_at(index)

func _process(delta):
	if active_areas.size() > 0 && interactable:
		active_areas.sort_custom(_sort_by_distance)
		label.text = base_text + active_areas[0].action_name
		label.global_position = active_areas[0].global_position
		label.global_position.y -= 36
		label.global_position.x -= label.size.x / 2
		label.show()
	else:
		label.hide()
		
func _sort_by_distance(area1, area2):
	var area1_to_player = player.global_position.distance_to(area1.global_position)
	var area2_to_player = player.global_position.distance_to(area2.global_position)
	return area1_to_player < area2_to_player
	
func _input(event):
	if event.is_action_pressed("interact") && interactable:
		if active_areas.size() > 0:
			interactable = false
			label.hide()
			
			await active_areas[0].interact.call()
			
			interactable = true
