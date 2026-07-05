extends Node2D


@onready var character1: AnimatedSprite2D = $Character1


var action_list = [
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
	"walking",
	"whispering"
]


var action: int = randi_range(0, len(action_list) - 1)
var timer = 0
var started = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func event_timer():
	timer += 1
	if timer > 100 and not started:
		character1.reset_positions()
		action = randi_range(0, len(action_list) - 1)
	if timer > 100:
		started = true
	if timer > 1000:
		timer = 0
		started = false
