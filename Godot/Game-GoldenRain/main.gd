extends Node2D

var scene = PackedScene
@export var Drop: PackedScene
var score = 0
func _ready():
	randomize()
	
func _on_money_timer_timeout():
	var drop = Drop.instantiate()
	add_child(drop)
	drop.add_to_group("drops")
	drop.position.x = randi_range(0,1024)

func _on_player_body_entered(body):
	score += 1
	body.queue_free()
