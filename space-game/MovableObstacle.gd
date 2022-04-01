extends KinematicBody2D

func set_position(input_position : Vector2) -> void:
	position = input_position

func push(velocity : Vector2) -> void:
	move_and_slide(velocity)
