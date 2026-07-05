extends Node2D

class_name Character


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
