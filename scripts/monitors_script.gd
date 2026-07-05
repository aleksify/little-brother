extends Button

@onready var camera: Sprite2D = $"../../monitors/CameraFeedForeground"

func _on_pressed() -> void:
	camera.visible = true
