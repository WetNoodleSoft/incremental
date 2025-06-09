extends Control

const MATERIALINVENTORY = preload("res://Scripts/inventory.gd")

@onready var inventory_ui: AspectRatioContainer = $InventoryUI
@onready var inventory = {}
@onready var clock: Timer = $Timer

@export var tick_interval = 3.0


func _ready() -> void:
	var material_inventory = MATERIALINVENTORY.new() #initialize to inventory mgmt script
	inventory = material_inventory.initialize_database() #link inventory dict to mgmt script
	inventory_ui.update_label(inventory)
	clock.start(tick_interval)
	clock.timeout.connect(_on_timer_timeout)
	print("Timer start")
	return
	
	
func _process(_delta) -> void:
	return


func _on_timer_timeout():
	inventory_ui.update_label(inventory)
	print("Tick")
	return
	
	
	
