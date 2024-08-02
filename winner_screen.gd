extends Node2D

@onready var time = $MarginContainer/VBoxContainer/time
@onready var next_level = $MarginContainer/VBoxContainer/Next_Level
@onready var levels = $MarginContainer/VBoxContainer/Levels

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var points = 90000 - float(Values.time) * 1000
	if OS.has_feature("web"):
		next_level.visible = false
		levels.visible = false
		JavaScriptBridge.eval("""
		fetch(`https://gamesbot.u3.style/highscore/"""+str(points)+"""?game=slimedodger"""+str(Values.level)+"""&${window.location.search.substr(1)}`)
		""")
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time.text = "Time: " + str(Values.time)

	if Values.level == 3:
		next_level.hide()
		print("hi")




func _on_levels_pressed():
	get_tree().change_scene_to_file("res://levels.tscn")
