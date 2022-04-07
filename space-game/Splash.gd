extends CanvasLayer

signal game_start
	
func start_game() -> void:
	$Message.text = "Space Castaway"
	display_and_countdown()
	yield($Timer, "timeout")
	emit_signal("game_start")

func retry_game() -> void:
	$Message.text = "Game Over"
	display_and_countdown()
	start_game()

func end_game() -> void:
	$Message.text = "You Escaped"
	$ColorRect.show()
	$Message.show()

func display_and_countdown() -> void:
	$ColorRect.show()
	$Message.show()
	$Timer.start()

func _on_Timer_timeout() -> void:
	$ColorRect.hide()
	$Message.hide()
