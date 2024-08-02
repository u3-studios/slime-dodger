extends Node2D

@onready var time = $MarginContainer/VBoxContainer/time
@onready var next_level = $MarginContainer/VBoxContainer/Next_Level


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time.text = "Time: " + str(Values.time)

	if Values.level == 3:
		next_level.hide()
		print("hi")




func _on_levels_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")
