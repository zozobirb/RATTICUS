extends Area2D
class_name SpawnAreas



func _ready():
	randomize()
	

func _on_area_entered(area: Area2D) -> void:
	print("IM IN DA GRASS")
	_roll_chance()

func _roll_chance():
	var probability : int = 5
	if (randi() % probability) == (probability - 1): 
		print("i solo this ez")
		$"../Player".global_position = $"../teleport".global_position
		swap_cam()
		gameManager.battle_time()
		pass

func swap_cam():
	$"../camera2".make_current()
