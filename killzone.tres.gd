extends Area2D

@onready var timer = $Timer
#@onready var player = $"."
#
func _on_body_entered(body):
	Values.is_alive = false
	#if body.remove_child_node_CollisionShape2D.get_parent().name != "slime":
		#Engine.time_scale = 0.5
		#timer.start()
	#else:
		#get_tree().reload_current_scene()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://death_screen.tscn")
	Engine.time_scale = 1.0
