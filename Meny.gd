extends Node2D

@onready var h_slider = $MarginContainer/VBoxContainer/Volum/HSlider

# Called when the node enters the scene tree for the first time.
func _ready():
	var busIndex = AudioServer.get_bus_index('Master');
	if busIndex != -1:
		var currentDb = AudioServer.get_bus_volume_db(busIndex)
		h_slider.value = 2 * (currentDb + 50);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var busIndex = AudioServer.get_bus_index('Master');
	if busIndex != -1:
		var newDb = -50 + (h_slider.value/2)
		AudioServer.set_bus_volume_db(busIndex, newDb)
