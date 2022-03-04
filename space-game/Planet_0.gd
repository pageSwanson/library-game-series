extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func initialize() -> void:
	$Castaway.initialize($StartPosition.position)

# Called when the node enters the scene tree for the first time.
func _ready():
	initialize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Castaway_hit():
	initialize()
