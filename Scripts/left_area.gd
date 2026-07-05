extends Area2D


@onready var cam: Camera2D = $"../../Camera2D"


func _on_mouse_entered() -> void:
	cam.edge_active["left"] = true

func _on_mouse_exited() -> void:
	cam.edge_active["left"] = false
