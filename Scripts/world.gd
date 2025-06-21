extends Node2D

@onready var inventory: Dictionary = {}

func world_tick(inventory: Dictionary) -> Dictionary:
	print("tick")
	inventory["iron"] += 1
	return inventory
