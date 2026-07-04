extends Camera2D

@export var max_speed: float = 800.0
@export var accel_strength: float = 1500.0

var velocity: Vector2 = Vector2.ZERO
var accel_input: Vector2 = Vector2.ZERO
var edge_active: Dictionary = {"left": false, "right": false, "top": false, "bottom": false}
var offsett: Vector2 = Vector2.ZERO
var home_position: Vector2

func _ready() -> void:
	home_position = position

func _physics_process(delta: float) -> void:
	var any_active: bool = edge_active["left"] or edge_active["right"] or edge_active["top"] or edge_active["bottom"]

	if any_active:
		accel_input = Vector2.ZERO
		if edge_active["left"] or edge_active["right"]:
			accel_input.x += accel_strength
		if edge_active["top"] or edge_active["bottom"]:
			accel_input.y += accel_strength

		velocity += accel_input * delta
		velocity = velocity.limit_length(max_speed)
		if edge_active["left"] or edge_active["bottom"]:
			offsett -= velocity * delta
		if edge_active["top"] or edge_active["right"]:
			offsett += velocity * delta
		position = home_position + offsett
		return

	elif position != home_position:
		if offsett.x < 0.0:
			accel_input = Vector2.ZERO
			accel_input.x += accel_strength
			velocity += accel_input * delta
			offsett += velocity * delta
			position = home_position + offsett
		if offsett.y < 0.0:
			accel_input = Vector2.ZERO
			accel_input.y += accel_strength
			velocity += accel_input * delta
			velocity = velocity.limit_length(max_speed)
			offsett += velocity * delta
			position = home_position + offsett
