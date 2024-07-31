extends CharacterBody2D


const SPEED = 180.0
const JUMP_VELOCITY = -300.0

var isJumping = true

@onready var animated_sprite_2d = $AnimatedSprite2D


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		isJumping = true
		velocity.y = JUMP_VELOCITY
	if Input.is_action_just_pressed("ui_accept") and not is_on_floor() and isJumping:
		isJumping = false
		velocity.y = JUMP_VELOCITY
	
	if Input.is_action_just_pressed("respawn"):
		get_tree().reload_current_scene()
		Values.time = 0

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if Input.is_action_just_pressed("open menu"):
		get_tree().change_scene_to_file("res://meny.tscn")
	
	if direction:
		animated_sprite_2d.play("run")
		velocity.x = direction * SPEED
	else:
		animated_sprite_2d.play("idel")
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction == -1:
		animated_sprite_2d.flip_h = true
	else: animated_sprite_2d.flip_h = false

	move_and_slide()
