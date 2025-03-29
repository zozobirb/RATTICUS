extends Area2D
class_name SpawnAreas


var _player := Player

func _ready():
	randomize()
	

func _on_area_entered(area: Area2D) -> void:
	print("IM IN DA GRASS")
	_roll_chance()

func _roll_chance():
	var probability : int = _player.encounterChance 
	if (randi() % probability) == (probability - 1): 
		print("i solo this ez")
		gameManager.battle_time()
		pass
