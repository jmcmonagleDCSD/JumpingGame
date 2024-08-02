extends Area2D

var speed = 6

func _process(delta):
	position.x -= speed


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_body_entered(body):
	if body.is_in_group("player"):
		GameManager.game_over.emit()
		get_tree().paused = true
