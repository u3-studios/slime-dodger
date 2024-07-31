extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _pressed():
	Values.level += 1
	if Values.level == 2:
		get_tree().change_scene_to_file("res://level_2.tscn")
	elif Values.level == 3:
		get_tree().change_scene_to_file("res://level_3.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

