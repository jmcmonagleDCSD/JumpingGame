extends Control

var score = 0
@onready var label = $Label


func _ready():
	score = 0
	GameManager.current_score = score
	label.text = str(score)
	
	
func _on_timer_timeout():
	score += 1
	GameManager.current_score = score
	label.text = str(score)
