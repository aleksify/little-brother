extends AnimatedSprite2D


@onready var channel_scene: Node2D = get_parent()

var action_list
var action



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	action_list = channel_scene.action_list
	action = channel_scene.action

var frame_action_count: int = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if action < 7:
		event_solo(delta)
	else:
		event_pairs(delta)



		
		


func event_solo(delta: float) -> void:
	if position.x < 40 and position.x > -40 and action != -1:
		frame_action_count += 1
		if frame_action_count < 1000:
			play(action_list[action])
		else:
			action = -1
	else:
		play("walking")
		if scale.x < 0:
			position.x += 100 * delta


func event_pairs(delta: float) -> void:
	if position.x < 40 and position.x > -40 and action != -1:
		frame_action_count += 1
		if frame_action_count < 1000:
			play(action_list[action])
		else:
			action = -1
	else:
		play("walking")
		if scale.x < 0:
			position.x += 100 * delta
		else:
			position.x -= 100 * delta
