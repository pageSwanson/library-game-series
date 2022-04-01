extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movable_obstacle_position_1 : Vector2 = Vector2(198, 248)
var movable_obstacle_position_2 : Vector2 = Vector2(199, 176)
var movable_obstacle_position_3 : Vector2 = Vector2(254, 248)

func initialize() -> void:
	$Castaway.initialize($StartPosition.position)
	$MovableObstacle.set_position(movable_obstacle_position_1)
	$MovableObstacle2.set_position(movable_obstacle_position_2)
	$MovableObstacle3.set_position(movable_obstacle_position_3)

# Called when the node enters the scene tree for the first time.
func _ready():
	initialize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Castaway_hit():
	initialize()
