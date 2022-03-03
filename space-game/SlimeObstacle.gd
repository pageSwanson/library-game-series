extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# randomize()
	$Sprite.texture = load("res://art/slime/" + load_slime_texture())
	$Sprite.flip_h = randf() > 0.5

func load_slime_texture() -> String:
	var slime_directory : Directory = Directory.new()
	if slime_directory.open("res://art/slime") != OK:
		print("An error occurred when trying to access the path.")
		return ""
	
	slime_directory.list_dir_begin(true, true)
	var file_name : String = slime_directory.get_next()
	var slime_file_names : Array = []
	
	while file_name != "":
		if file_name.ends_with(".png"):
			slime_file_names.append(file_name)
		file_name = slime_directory.get_next()
	slime_directory.list_dir_end()

	return slime_file_names[randi() % slime_file_names.size()]
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
