extends Area2D

func _on_area_entered(area: Area2D) -> void:
	var character = area.get_parent()
	character.perform_anim()
