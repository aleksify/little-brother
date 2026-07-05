extends Area2D

@onready var chan: Node2D = $"../.."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	var character = area.get_parent()
	chan.action = randi_range(1, len(chan.action_list) - 1)
	character.reset_position()
