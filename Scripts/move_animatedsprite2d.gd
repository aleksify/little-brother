extends AnimatedSprite2D


@onready var channel_scene: Node2D = get_parent()

var action_list
var action

var frame_action_count: int = 0
var home_position_x: float
var is_anim_playing: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	home_position_x = position.x
	action_list = channel_scene.action_list
	action = channel_scene.action


func reset_position() -> void:
	position.x = home_position_x
	

func perform_anim() -> void:
	is_anim_playing = true
	play(action_list[action])
	await get_tree().create_timer(5).timeout
	is_anim_playing = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not is_anim_playing:
		event(delta, action)
	action = channel_scene.action


func event(delta: float, action: int) -> void:
	play("walking")
	if action < 8 and action != 0:
		if scale.x < 0:
			position.x += 100 * delta
	elif action >= 8:
		if scale.x < 0:
			position.x += 100 * delta
		else:
			position.x -= 100 * delta
