extends Node

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
	$Splash.start_game()

func _on_Castaway_hit():
	$Splash.retry_game()

func _on_Objective_reached():
	$Castaway.disable()
	# wait some time to splash and close the game
	yield(get_tree().create_timer(2), "timeout")
	$Splash.end_game()

func _on_Splash_game_start():
	initialize()
