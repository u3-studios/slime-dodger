extends Node2D
@onready var coins = $coin5


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if coins.get_child_count() == 0:
		get_tree().change_scene_to_file("res://winner_screen.tscn")
