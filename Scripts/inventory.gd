class_name ResourceDatabase extends Resource
# Central dictionary resource for storing/iterating in-game resource counts.

var inventory: Dictionary = {}

func initialize() -> Dictionary: #called at new game start
	inventory = {
	"ale" : 100,
	"earth" : 50,
	"coal" : 10,
	"stone" : 0,
	"iron" : 0,
	"steel" : 0,
	"titanium": 0,
	"gold" : 0,
	"platinum" : 0,
	"orichalcum" : 0,
	"dwarves" : 0,
	"ale_cows" : 0,
	"mine_carts" : 0
	}
	print("Inventory initialized: ", inventory)
	return inventory
	

func load_save(saved_inventory: Dictionary) -> Dictionary:
	inventory = saved_inventory
	return inventory


func check_inventory() -> Dictionary:
	return inventory


func update_inventory(label: String, change_amount: float) -> void:
	inventory[label] += change_amount
	return
