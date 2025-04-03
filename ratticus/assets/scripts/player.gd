extends CharacterBody2D
class_name Player

var AttackList = [$"../ListOfAtks".get_atk(0), $"../ListOfAtks".get_atk(2), $"../ListOfAtks".get_atk(4)]
var locked := 1
var walkspeed := 500
var escapeChance := .50
var encounterChance := 10
var attack := 1
var defense := 1
var level := 1
var hp := 10
var XP := 0
var chosen_atk : int

func _process(delta: float) -> void:
	_handle_walk(delta)
	print(AttackList)
	move_and_slide()


func _handle_walk(delta: float):
	var x_input := Input.get_axis("ui_left", "ui_right")
	var y_input := Input.get_axis("ui_up", "ui_down")

	
	global_position.y += walkspeed * delta * y_input * locked
	global_position.x += walkspeed * delta * x_input * locked
	if(Input.is_key_pressed(KEY_LEFT)) :
		$rat.flip_h = false
	if(Input.is_key_pressed(KEY_RIGHT)):
		$rat.flip_h = true
		
	
	pass

func _level_up():
	if(XP >= round(100 * (1+ level/2 ))):
		XP -= round(100 * (1+ level/2 ))
		
		level += 1
		hp = round(hp * 1.8)
		defense = round(defense * 1.7)
		attack = round(attack * 1.5)

func lock(num : int):
	locked = 1
