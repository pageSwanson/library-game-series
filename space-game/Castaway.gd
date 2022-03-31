extends KinematicBody2D

signal hit

# Declare member variables here
export var speed : int = 200 # how fast the character moves across screen (pixels / s)
var game_window_size : Vector2

func initialize(input_position : Vector2) -> void:
	set_position(input_position)
	show()
	enable_collisions()

func enable_collisions() -> void:
	$CollisionShape2D.set_deferred("disabled", false)

func set_position(input_position : Vector2) -> void:
	position = input_position

# Called when the node enters the scene tree for the first time.
func _ready():
	game_window_size = get_viewport_rect().size

func _physics_process(delta : float) -> void:
	var velocity : = Vector2(0, 0)
	if Input.is_action_pressed("move_down"):
		velocity.y = velocity.y + 1
	elif Input.is_action_pressed("move_left"):
		velocity.x = velocity.x - 1
	elif Input.is_action_pressed("move_up"):
		velocity.y = velocity.x - 1
	elif Input.is_action_pressed("move_right"):
		velocity.x = velocity.x + 1

	if velocity.length() > 0:
		if velocity.y > 0:
			$AnimatedSprite.play("down")
		elif velocity.y < 0:
			$AnimatedSprite.play("up")
		# if the x component of the velocity is non-zero
		elif velocity.x != 0:
			$AnimatedSprite.play("right")
			$AnimatedSprite.flip_h = velocity.x < 0 # the sprite should flip if true - by default, this is false (don't flip)
	
	move_and_slide(velocity * speed)
	for i in get_slide_count():
		var collided_with : = get_slide_collision(i).collider
		var collision_layer : int = collided_with.get_collision_layer()
		if collision_layer == 0b100:
			hide()
			$CollisionShape2D.set_deferred("disabled", true)
			emit_signal("hit")
		if collision_layer == 0b1000:
			collided_with.push(velocity * (speed / 2))
