extends CharacterBody2D
class_name Player

var walkspeed := 300
var escapeChance := .50
var encounterChance := .1
var attack 
var defense
var level := 1
var hp

func _process(delta: float) -> void:
	_handle_walk(delta)
	move_and_slide()
	
	
func _handle_walk(delta: float):
	var x_input := Input.get_axis("ui_left", "ui_right")
	var y_input := Input.get_axis("ui_up", "ui_down")

	
	velocity.y += walkspeed * delta * y_input
	velocity.x += walkspeed * delta * x_input
	pass
