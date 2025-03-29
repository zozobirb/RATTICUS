extends CollisionShape2D
class_name SpawnAreas


var _player = null

func _ready():
	randomize()
	
func _on_body_entered():
	_roll_chance()
	


func _roll_chance():
	var probability : int = _player.encounterChance 
	if (randi() % probability) == (probability - 1): 
		gameManager.battle_time()
		pass
