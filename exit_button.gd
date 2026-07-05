extends Button

@onready var fg: Sprite2D = $".."
@onready var bg1: Sprite2D = $"../CameraFeedBackground1"
@onready var bg2: Sprite2D = $"../CameraFeedBackground2"
@onready var bg3: Sprite2D = $"../CameraFeedBackground3"
@onready var bg4: Sprite2D = $"../CameraFeedBackground4"

func _on_pressed() -> void:
	fg.visible = false
	if (bg1.visible == true):
		bg1.visible = false
	if (bg2.visible == true):
		bg2.visible = false
	if (bg3.visible == true):
		bg3.visible = false
	if (bg4.visible == true):
		bg4.visible = false
