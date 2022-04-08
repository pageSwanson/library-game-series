extends Area2D

signal reached

func _on_Objective_body_entered(body):
	emit_signal("reached")
	$CollisionShape2D.set_deferred("disabled", true) # don't interrupt physics
