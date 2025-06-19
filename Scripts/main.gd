extends Control

@onready var start_screen: Control = $"."
@onready var inventory_ui: InventoryUI = $CanvasLayer/InventoryUI
@onready var controls_ui: ControlsUI = $CanvasLayer/ControlsUI
@onready var clock: Timer = $Timer
@onready var mine_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/MineButton
@onready var dwarf_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/DwarfButton
@onready var tool_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/ToolButton
@onready var pause_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/PauseButton
@onready var raw_materials: Dictionary = {}
var world_instance: Node

@export var tick_interval: float = 1.0
@export var mine_strength: float = 5.0

const INVENTORY: ResourceDatabase = preload("res://Resources/inventory.tres")
var world_scene: PackedScene = preload("res://Scenes/world.tscn")

func _ready() -> void:
	raw_materials = INVENTORY.check_inventory() # sets inventory to resource values (new game or loaded)
	inventory_ui.update_labels(raw_materials) # sets initial inventory labels
	clock.start(tick_interval) # start game clock and connect timeout
	clock.timeout.connect(_on_timer_timeout)
	print("Timer start")
	mine_button.pressed.connect(_mine_button) # attach UI control buttons
	dwarf_button.pressed.connect(_dwarf_button)
	tool_button.pressed.connect(_tool_button)
	pause_button.pressed.connect(_pause_button)
	world_instance = world_scene.instantiate()
	add_child(world_instance)
	return
	
	
func _process(_delta: float) -> void:
	raw_materials = INVENTORY.check_inventory()
	inventory_ui.update_labels(raw_materials)
	return


func _on_timer_timeout() -> void: # called each game clock 'tick'
	world_instance.world_tick()
	#print("tick")
	return


func _mine_button() -> void:
	controls_ui.click_mine(mine_strength)
	return


func _dwarf_button() -> void:
	controls_ui.click_dwarf()
	return


func _tool_button() -> void:
	controls_ui.click_tool()
	return


func _pause_button() -> void:
	if clock.is_paused():
		print("Resume")
		clock.paused = false
	else:
		print("Pause")
		clock.paused = true
	return
