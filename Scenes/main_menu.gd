extends Control

@onready var score_label = $MarginContainer/ScoreLabel


func _ready():
	score_label.text = str(GameManager.get_high_score())
	
	
func _process(delta):
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene_to_file("res://Scenes/main.tscn")

