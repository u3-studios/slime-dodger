extends CanvasLayer

var isFinished = false

func _physics_process(delta):
	if isFinished == false:
		Values.time = float(Values.time) + delta
	
	if get_parent().get_node("coin5").get_child_count() == 0:
		isFinished = true
	
	update_ui()

func update_ui():
	
	var formatted_time = str(snapped(Values.time, 0.01))
	var decimal_index = formatted_time.find(",")
	
	if decimal_index > 0:
		formatted_time = formatted_time.left(decimal_index + 3)
	
	Values.time = formatted_time
	
	$Label.text = formatted_time
