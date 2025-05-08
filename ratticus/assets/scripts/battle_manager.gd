extends Node2D
class_name battle_manager
var turn := 0
var TurnsPassed := 1

func battle_time():
	
	print("in the script, straight up printing it")

	

	if(turn == 0):
		var tempPlayer = Player.new()
		
		tempPlayer.chosen_atk
		
		pass



	if(turn == 1):
		var TempEnemy = Enemy.new()
		var attack = TempEnemy.getAttack(TempEnemy.AttackList)
		var dmg = TempEnemy.getAttackDmg(attack, TempEnemy.levelE)
	
	
	pass
