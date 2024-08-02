extends Node

var score = 0


func add_point():
	score += 1
	Values.coins = score
	$"../score".text = "coin: " + str(score)
	
