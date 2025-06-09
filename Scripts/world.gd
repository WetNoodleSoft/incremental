extends Control

const MATERIALINVENTORY = preload("res://Scripts/inventory.gd")

@onready var inventory_ui: InventoryUI = $InventoryUI
@onready var controls_ui: ControlsUI = $ControlsUI
@onready var clock: Timer = $Timer
@onready var mine_button: Button = $ControlsUI/ButtonPanel/MarginContainer/ControlButtons/MineButton
@onready var dwarf_button: Button = $ControlsUI/ButtonPanel/MarginContainer/ControlButtons/DwarfButton
@onready var tool_button: Button = $ControlsUI/ButtonPanel/MarginContainer/ControlButtons/ToolButton
@onready var inventory: Dictionary = {}

@export var tick_interval: float = 3.0


func _ready() -> void:
	var material_inventory: ResourceDatabase = MATERIALINVENTORY.new() #initialize to inventory mgmt script
	var initial_inventory: Dictionary = material_inventory.initialize_inventory() #link inventory dict to mgmt script
	inventory_ui.update_labels(initial_inventory)
	clock.start(tick_interval)
	clock.timeout.connect(_on_timer_timeout)
	print("Timer start")
	mine_button.pressed.connect(_mine_button)
	dwarf_button.pressed.connect(_dwarf_button)
	tool_button.pressed.connect(_tool_button)
	return
	
	
func _process(_delta: float) -> void:
	
	return


func _on_timer_timeout() -> void:
	
	inventory_ui.update_labels(inventory)
	print("Tick")
	return
	

func _mine_button() -> void:
	controls_ui.click_mine()
	return
	
	
func _dwarf_button() -> void:
	controls_ui.click_dwarf()
	return


func _tool_button() -> void:
	controls_ui.click_tool()
	return
