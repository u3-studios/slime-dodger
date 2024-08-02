extends TouchScreenButton

func _on_pressed():
	Values.is_alive = true
	if Input.is_action_just_pressed("resume"):
		if Values.level == 1:
			get_tree().change_scene_to_file("res://main.tscn")
		elif Values.level == 2:
			get_tree().change_scene_to_file("res://level_2.tscn")
		elif Values.level == 3:
			get_tree().change_scene_to_file("res://level_3.tscn")
