
class_name Enemy

extends CharacterBody2D


@onready var attackType: String
@onready var attackEDmg: int
@onready var defenseE: int
@onready var levelE: int
@onready var HpE: int
@onready var AttackList: Array = ["Antena Whip", "Wing Smash", "4 punch"]
@onready var weights:= PackedFloat32Array([1, 0.25, 0.5])
@onready var Actions: Array
@onready var XpRewards: int
@onready var gM: int
@onready var playerHp: int

func _ready() -> void: 
	defenseE = 4
	levelE = 5
	HpE = 100  
	XpRewards = 45 
	attackType = getAttack(AttackList)
	attackEDmg = getAttackDmg(attackType, levelE)
	
	

func getAttack(AttackList: Array) -> String:
	var rand: int
	var rng = RandomNumberGenerator.new()
	var attackId = rng.rand_weighted(weights)
	var attackType : String = AttackList[attackId]
	print(attackType,"\n")
	return attackType
	
func getAttackDmg(attackType: String, lvlE: int) -> int:
	var dmg : int
	if(attackType == "Antena Whip"):
		dmg = 5
	if(attackType == "Wing Smash"):
		dmg = 20
	if(attackType == "4 punch"):
		dmg = 8
		
	if(lvlE >= 0 and lvlE < 5):
		dmg = (dmg*0.25)+dmg
	if(lvlE >= 5 and lvlE < 10):
		dmg = (dmg*0.35)+dmg
	if(lvlE >= 10 and lvlE < 15):
		dmg = (dmg*0.55)+dmg
	if(lvlE >= 15 and lvlE < 21):
		dmg = (dmg*0.85)+dmg
		
	print(dmg,"\n")
	return dmg
	
#will use the below functions to get the damge dealt to the enemy by the player
func getDefenseE() -> int:
	return defenseE
	
func getHp() -> int:
	return HpE


func enemyLose() -> int:
	print("Enemy has lost, player rewarded ",XpRewards)
	return XpRewards
func enemyWins() -> void:
	print("YOU'VE LOST RATTICUS, -AHAHA")
	pass

###here is where the magic begins!!!check for battle manager

	###onAttack
func _onAttack(onAtt: int) -> void:
	var currAttack: String = getAttack(AttackList)
	var damage: int = getAttackDmg(currAttack, levelE)
	print("Enemy attacks with: ",currAttack,"\nDamage dealt to player is: ", damage)
		#ensure to pass the damage the enemy does this player AND UPDATE THE PlAYER's HP
	
func _onIdle(damagePlayer: int) -> void:
	HpE = HpE-damagePlayer
	
	
		
		
	


	

	
