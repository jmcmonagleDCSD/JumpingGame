extends CharacterBody2D


var jump_height = -1200
var gravity = 80
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	velocity.y += gravity
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_height
		
	move_and_slide()
	
	if is_on_floor():
		animated_sprite_2d.play("Run")
	else:
		if velocity.y < 0:
			animated_sprite_2d.play("Jump")
		else:
			animated_sprite_2d.play("Fall")
