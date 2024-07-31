extends TouchScreenButton

func _on_pressed():
	if Input.is_action_just_pressed("resume") and Values.level == 1:
		get_tree().change_scene_to_file("res://main.tscn")
	elif Values.level == 2:
		get_tree().change_scene_to_file("res://level_2.tscn")
