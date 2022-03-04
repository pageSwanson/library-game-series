extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# optionally uncomment the line below to change the random seed
	# randomize()
	$AnimatedSprite.play("slime")
	# use a coin-toss probability distribution to decide whether to flip the texture
	$AnimatedSprite.flip_h = randf() > 0.5 # generate a floating point number between 0 and 1, test if above 0.5

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
