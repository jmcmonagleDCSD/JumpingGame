extends Node

signal game_over

var current_score = 0
var high_score = 0

func get_high_score():
	if current_score > high_score:
		high_score = current_score
	
	return high_score
