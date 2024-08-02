extends Control

var can_restart = false

@onready var timer = $Timer
@onready var restart_label = $VBoxContainer/RestartLabel


func _ready():
	GameManager.game_over.connect(game_over)

func _process(delta):
	if Input.is_action_just_pressed("jump") and can_restart:
		get_tree().paused = false
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
		
func game_over():
	show()
	timer.start()
	

func _on_timer_timeout():
	restart_label.show()
	can_restart = true
	
