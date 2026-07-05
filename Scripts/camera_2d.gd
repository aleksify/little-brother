extends Camera2D

@export var max_speed: float = 800.0
@export var accel_strength: float = 1000.0
@export var max_offset: float = 300

var velocity: float = 0
var edge_active: Dictionary = { "left": false, "right": false }


func _physics_process(delta: float) -> void:
	var dir: float = 0.0
	if edge_active["left"]:
		dir -= 1.0
	if edge_active["right"]:
		dir += 1.0

	if dir != 0.0:
		velocity = min(velocity + accel_strength * delta, max_speed)
		offset.x = clampf(offset.x + dir * velocity * delta, -max_offset, max_offset)
	else:
		velocity = 0.0
		offset.x = move_toward(offset.x, 0.0, max_speed * delta)
		
