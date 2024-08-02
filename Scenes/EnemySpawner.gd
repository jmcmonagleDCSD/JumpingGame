extends Node2D

@export var enemy_scene: PackedScene

@onready var marker_2d = $Marker2D
@onready var marker_2d_2 = $Marker2D2

func _on_timer_timeout():
	var random_x = randf_range(marker_2d.global_position.x, marker_2d_2.global_position.x)
	var spawn_pos = Vector2(random_x, marker_2d.global_position.y)
	var enemy = enemy_scene.instantiate()
	add_child(enemy)
	enemy.global_position = spawn_pos
