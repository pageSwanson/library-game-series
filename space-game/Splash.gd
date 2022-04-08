extends CanvasLayer

signal game_start

func start_game() -> void:
	$Message.text = "Space Castaway"
	display_and_countdown()
	# stop the game from doing anything else - don't move until the timer is done
	yield($Timer, "timeout")
	emit_signal("game_start")

func retry_game() -> void:
	$Message.text = "Game Over"
	display_and_countdown()
	# add this yield so we hesitate before restarting the level
	yield($Timer, "timeout")
	start_game()

func end_game() -> void:
	$Message.text = "You Escaped"
	$ColorRect.show()
	$Message.show()

func display_and_countdown() -> void:
	# reference the nodes as you named them
	$ColorRect.show()
	$Message.show()
	$Timer.start()

func _on_Timer_timeout() -> void:
	$ColorRect.hide()
	$Message.hide()
