extends Button
@onready var paper_please: Sprite2D = $"../PaperPlease"


func _on_pressed() -> void:
	paper_please.visible = true
