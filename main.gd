extends Node2D
@onready var coins = $coin5
@onready var killzone = $"."


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.has_feature("web"):
		var level = JavaScriptBridge.eval("new URLSearchParams(window.location.search).get('level')")
		if level and level != "0" and level != "1":
			var levelInt = int(level)
			Values.level = levelInt
			get_tree().change_scene_to_file("res://level_"+level+".tscn");
	
	Values.time = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if coins.get_child_count() == 0:
		get_tree().change_scene_to_file("res://winner_screen.tscn")
