extends Button
@onready var main_menu: Sprite2D = $".."


func _on_pressed() -> void:
	main_menu.visible = false
