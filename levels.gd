extends Node2D

@onready var level_1 = $MarginContainer/VBoxContainer/Level_1
@onready var level_2 = $MarginContainer/VBoxContainer/level_2
@onready var level_3 = $MarginContainer/VBoxContainer/level_3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_level_1_pressed():
	if Values.level >= 1:
		Values.is_alive = true
		get_tree().change_scene_to_file("res://main.tscn")
		print("hi")


func _on_level_2_pressed():
	Values.is_alive = true
	if Values.level >= 2:
		print('yo')
		get_tree().change_scene_to_file("res://level_2.tscn")


func _on_level_3_pressed():
	Values.is_alive = true
	if Values.level >= 3:
		get_tree().change_scene_to_file("res://level_3.tscn")
