extends Button

@onready var foreground: Sprite2D = $"../../CameraFeedForeground"
@onready var background: Sprite2D = $"../../CameraFeedForeground/CameraFeedBackground3"

func _on_pressed() -> void:
	background.visible = true
	foreground.visible = true
