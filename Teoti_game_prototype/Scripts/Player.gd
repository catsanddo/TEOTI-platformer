extends KinematicBody2D

const speed = 40
const gravity = 20
const jump_force = 350
const friction = 0.2

var velocity = Vector2.ZERO

func _ready():
	pass

func _physics_process(delta):
	update_velocity()

func update_velocity():
	if Input.is_action_pressed("ui_left"):
		$Sprite.flip_h = true
		velocity.x -= speed
	if Input.is_action_pressed("ui_right"):
		$Sprite.flip_h = false
		velocity.x += speed
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jump_force
	else:
		velocity.y += gravity
		
	velocity = move_and_slide(velocity, Vector2.UP)
	velocity.x = lerp(velocity.x, 0, friction)
