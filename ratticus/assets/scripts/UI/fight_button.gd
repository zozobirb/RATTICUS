extends TextureButton
@onready var fightOptions := $PopupMenu



func _on_button_down() -> void:
	
	pass
	
	


func _on_popup_menu_ready() -> void:
	fightOptions.add_item("option 1", 0, 0)
	fightOptions.add_item("option 2", 1, 1)
	fightOptions.add_item("option 3", 2, 2)
	fightOptions.add_item("option 4", 3, 3)
