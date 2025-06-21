extends Control

@onready var start_screen: Control = $"."
@onready var inventory_ui: InventoryUI = $CanvasLayer/InventoryUI
@onready var controls_ui: ControlsUI = $CanvasLayer/ControlsUI
@onready var clock: Timer = $Timer
@onready var mine_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/MineButton
@onready var dwarf_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/DwarfButton
@onready var tool_button: Button = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/ToolButton
@onready var pause_button: TextureButton = $CanvasLayer/ControlsUI/ButtonPanel/MarginContainer/ControlButtons/PauseButton
@onready var inventory: Dictionary = {}
var world_instance: Node

@export var tick_interval: float = 1.0
@export var mine_strength: float = 5.0

const STOCK: ResourceDatabase = preload("res://Resources/inventory.tres")
var world_scene: PackedScene = preload("res://Scenes/world.tscn")

func _ready() -> void:
	inventory = STOCK.check_inventory() # Pulls inventory from database
	inventory_ui.update_ui_labels(inventory) # Pass quantities to UI labels
	clock.start(tick_interval) # start game clock and connect timeout
	clock.timeout.connect(_on_timer_timeout)
	mine_button.pressed.connect(_mine_button) # attach UI control buttons
	dwarf_button.pressed.connect(_dwarf_button)
	tool_button.pressed.connect(_tool_button)
	pause_button.pressed.connect(_pause_button)
	world_instance = world_scene.instantiate() # start world scene
	add_child(world_instance)
	return
	
	
func _process(_delta: float) -> void:
	inventory = STOCK.check_inventory()
	inventory_ui.update_ui_labels(inventory)
	return


func _on_timer_timeout() -> void: # called each game clock 'tick'
	inventory = world_instance.world_tick(inventory)
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
	controls_ui.click_pause()
	return
