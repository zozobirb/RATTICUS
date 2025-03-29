extends Node2D
class_name game_manager

func _ready() -> void:
	var battle = load("res://assets/scripts/battle_manager.gd").new()
