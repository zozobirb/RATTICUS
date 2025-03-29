extends CharacterBody2D

var walkspeed := 300
var escapeChance := .50
var encounterChance := .1
var attack 
var defense
var level := 1
var hp

func _process(delta: float) -> void:
	
	var x_input := Input.get_axis("ui_left", "ui_right")
	var y_input := Input.get_axis("ui_up", "ui_down")
	
	player.
	pass
