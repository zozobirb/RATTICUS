extends Node
class_name ListOfAtks

#Plan on making this like an array list/ struct type of thing that has a list of attacks that we can call 
#along with their base dmg then we can calc  the actual dmg in the battle_manager script

var allAtks := ["Tail Turbine", 10, "Sharp Claws", 10 , "Rat Dunk", 15]

func _ready() -> void:
	#print(dict["atk1"])
	#print(dict["atk1a"])
	
	pass
	
func get_atk(num: int):
	return allAtks[num]
	
func get_dmg(num : int):
	return allAtks[num + 1]
	
