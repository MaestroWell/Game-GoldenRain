extends CharacterBody2D

@onready var anim_player = $AnimatedSprite2D
func _process(delta):
	if Input.is_action_pressed("player_left"):
		anim_player.flip_h = true
		anim_player.play("Run")
		position.x -= 10
	elif Input.is_action_pressed("player_right"):
		anim_player.flip_h = false
		anim_player.play("Run")
		position.x += 10
	else: anim_player.play("Idole")

var screen_size
func _ready():
	screen_size = get_viewport_rect().size
