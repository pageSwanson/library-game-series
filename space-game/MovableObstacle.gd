extends KinematicBody2D

func push(velocity : Vector2) -> void:
	move_and_slide(velocity)

func set_position(input_position : Vector2) -> void:
	position = input_position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
