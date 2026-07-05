extends Node2D


class Character:
	@onready var area: Area2D = $Area2D
	@onready var sprite_2d: Sprite2D = $Sprite2D

	@export var action: int
	@export var speed: float = 10

	var event: bool = false


	func _process(delta: float) -> void:
		move(delta)


	func move(delta: float) -> void:
		if not event:
			position.x += speed * delta * side



@export var character1: Character = null
@export var character2: Character = null


@onready var sprite: Sprite2D = $Sprite2D


var side: int
var reportable: bool
var duration: float


func _ready() -> void:
	character1.area.connect("area_entered", check_event)
	character2.area.connect("area_entered", check_event)


func check_event():
	pass


func generate_event() -> void:
	var event = randi_range(0, 7)
	spawn_character(character1)
	spawn_character(character2)


func spawn_character(character: Character) -> void:
	var timer = randf_range(0, 5)
	character.position = Vector2(1600 * )


#func check_event():
#	if character1 and character1.action == SOLO:
#		event = true
	
#	and action == other.action:
#		event = true
