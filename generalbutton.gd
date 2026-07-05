extends Button

@onready var generalaccusation: Sprite2D = $"../Generalaccusation"

func _on_pressed() -> void:
	generalaccusation.visible = true
