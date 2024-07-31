extends Node2D

@onready var h_slider = $MarginContainer/VBoxContainer/Volum/HSlider

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -50 + (h_slider.value/(100/50)))

