class_name ResourceDatabase
# Central dictionary resource for storing/iterating in-game resource counts.

@export var resources: Dictionary = {}

func initialize_inventory() -> Dictionary: #called at new game start
	resources = {
	"earth" : 50.0,
	"coal" : 10.0,
	"stone" : 0.0,
	"iron" : 0.0,
	"steel" : 0.0,
	"titanium": 0.0,
	"gold" : 0.0,
	"platinum" : 0.0,
	"orichalcum" : 0.0,
	}
	print("Resources initialized: ", resources)
	return resources
	

func load_saved_inventory(saved_inventory: Dictionary) -> Dictionary:
	resources = saved_inventory
	return resources


func check_inventory() -> Dictionary:
	return resources


func update_inventory(label: String, change_amount: float) -> void:
	resources[label] += change_amount
	return
