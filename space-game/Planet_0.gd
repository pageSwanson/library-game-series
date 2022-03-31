extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func initialize() -> void:
	$Castaway.initialize($StartPosition.position)
	$MovableObstacle.set_position($MoveableObstaclePosition.position)

# Called when the node enters the scene tree for the first time.
func _ready():
	initialize()

func _on_castaway_hit():
	initialize()
