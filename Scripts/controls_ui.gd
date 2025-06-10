extends Node

class_name ControlsUI

@onready var mine_button: Button = $ButtonPanel/MarginContainer/ControlButtons/MineButton
@onready var dwarf_button: Button = $ButtonPanel/MarginContainer/ControlButtons/DwarfButton
@onready var tool_button: Button = $ButtonPanel/MarginContainer/ControlButtons/ToolButton

const INVENTORY: ResourceDatabase = preload("res://Resources/inventory.tres")


func click_mine(mine_strength: float) -> void:
	INVENTORY.update_inventory("earth", mine_strength)
	print("rock & stone!")
	return


func click_dwarf() -> void:
	return
	

func click_tool() -> void:
	
	return
