extends Button
@onready var sprite: Sprite2D = $".."


func _on_pressed() -> void:
	sprite.visible = false
