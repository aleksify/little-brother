extends Area2D

@onready var background: Node = $"../.."

func _on_area_entered(area: Area2D) -> void:
	var character = area.get_parent()
	background.action = randi_range(1, len(background.action_list) - 1)
	character.reset_position()
