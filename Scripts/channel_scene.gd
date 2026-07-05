extends Node2D

var action_list = [
	"walking",
	"book blank",
	"book e-circle",
	"book e-square",
	"book e-triangle",
	"book f-circle",
	"book f-square",
	"book f-triangle",
	"dance",
	"kissing",
	"laughing",
	"salute",
	"talking",
	"whispering"
]


var action: int = randi_range(1, len(action_list) - 1)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


var saved_first_scene: Node

func go_to_second():
	var current = get_tree().current_scene
	print(current)
	get_tree().root.remove_child(current)
	var second_scene = preload("res://2nd_scene.tscn")
	var scene_instance = second_scene.instantiate()
	print(get_tree())
	get_tree().root.add_child(scene_instance)
	get_tree().current_scene = scene_instance

func return_to_main():
	get_tree().current_scene.queue_free()
	get_tree().root.add_child(saved_first_scene)
	get_tree().current_scene = saved_first_scene
