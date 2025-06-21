extends Node

class_name InventoryUI

@onready var ale: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginAleQuant/AleQuant
@onready var earth: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginEarthQuant/EarthQuant
@onready var coal: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginCoalQuant/CoalQuant
@onready var stone: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginStoneQuant/StoneQuant
@onready var iron: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginIronQuant/IronQuant
@onready var steel: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginSteelQuant/SteelQuant
@onready var titanium: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginTitaniumQuant/TitaniumQuant
@onready var gold: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginGoldQuant/GoldQuant
@onready var platinum: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginPlatinumQuant/PlatinumQuant
@onready var orichalcum: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginOrichalcumQuant/OrichalcumQuant
@onready var dwarves: RichTextLabel = $"../WorldUI/InventoryPanel/MarginContainer/GridContainer/MarginDwarvesQuant/DwarvesQuant"
@onready var ale_cows: RichTextLabel = $"../WorldUI/InventoryPanel/MarginContainer/GridContainer/MarginAleCowsQuant/AleCowsQuant"
@onready var mine_carts: RichTextLabel = $"../WorldUI/InventoryPanel/MarginContainer/GridContainer/MarginMineCartsQuant/MineCartsQuant"
@onready var inventory_labels: Dictionary = {
		"ale" : ale,
		"earth" : earth, 
		"coal" : coal, 
		"stone" : stone, 
		"iron" : iron, 
		"steel" : steel, 
		"titanium" : titanium, 
		"gold" : gold, 
		"platinum" : platinum, 
		"orichalcum" : orichalcum,
		"dwarves" : dwarves,
		"ale_cows" : ale_cows,
		"mine_carts" : mine_carts
		}

func update_ui_labels (inventory: Dictionary) -> void: # update quantity labels
	for item: String in inventory:
		inventory_labels[item].text = str(inventory[item])
	#
	#for item: String in inventory:
		#var label: String = item
		#inventory_labels[label].text = str(inventory[item])
		#pass
	return
