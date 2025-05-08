extends PopupMenu
@onready var fightOptions := $PopupMenu


func load_atks():
	fightOptions.add_item("option 1", 0, 0)
	fightOptions.add_item("option 2", 1, 1)
	fightOptions.add_item("option 3", 2, 2)
	fightOptions.add_item("option 4", 3, 3)
