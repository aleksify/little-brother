extends Button

@onready var channel_scene: Node2D = $"../../channel1"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if channel_scene.visible:
		visible = true
		channel_scene.visible = false
	else:
		visible = false
		channel_scene.visible = true
