extends Node2D

@onready var h_slider = $MarginContainer/VBoxContainer/Volum/HSlider

# Called when the node enters the scene tree for the first time.
func _ready():
	var currentDb = AudioServer.get_bus_volume_db(AudioServer.get_bus_index('Master'))
	h_slider.value = 2 * (currentDb + 50);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var newDb = -50 + (h_slider.value/2)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), newDb)

