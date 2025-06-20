extends Node

class_name InventoryUI

@onready var earth: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginEarthQuant/EarthQuant
@onready var coal: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginCoalQuant/CoalQuant
@onready var stone: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginStoneQuant/StoneQuant
@onready var iron: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginIronQuant/IronQuant
@onready var steel: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginSteelQuant/SteelQuant
@onready var titanium: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginTitaniumQuant/TitaniumQuant
@onready var gold: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginGoldQuant/GoldQuant
@onready var platinum: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginPlatinumQuant/PlatinumQuant
@onready var orichalcum: RichTextLabel = $InventoryPanel/MarginContainer/GridContainer/MarginOrichalcumQuant/OrichalcumQuant


func update_inventory_count (inventory: Dictionary) -> void: #called on tick to update labels
	var inventory_labels: Dictionary = {
		"earth": earth, 
		"coal": coal, 
		"stone": stone, 
		"iron": iron, 
		"steel": steel, 
		"titanium": titanium, 
		"gold": gold, 
		"platinum": platinum, 
		"orichalcum": orichalcum
		}
	for item: String in inventory:
		var label: String = item
		inventory_labels[label].text = str(inventory[item])
		pass
	return
