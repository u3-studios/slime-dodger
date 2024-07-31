extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_down_right = $rayCastDownRight
@onready var ray_cast_down_left = $RayCastDownLeft
@onready var animated_sprite = $AnimatedSprite2D

func _ready():
	ray_cast_down_left.add_exception(get_parent().get_node("CharacterBody2D"))
	ray_cast_down_right.add_exception(get_parent().get_node("animated_sprite"))
	ray_cast_right.add_exception(get_parent().get_node("animated_sprite"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false

	if direction == 1 and not ray_cast_down_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if direction == -1 and not ray_cast_down_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		

	position.x += direction * SPEED * delta

