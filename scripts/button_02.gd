extends Button

@onready var background: Sprite2D = $"../../CameraFeedForeground/CameraFeedBackground2"
@onready var foreground: Sprite2D = $"../../CameraFeedForeground"

func _on_pressed() -> void:
	foreground.visible = true
	background.visible = true
