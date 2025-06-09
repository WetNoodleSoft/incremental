class_name ResourceDatabase
# Central dictionary resource for storing/iterating in-game resource counts.


func initialize_inventory() -> Dictionary: #called at game start
	var initial_resources: Dictionary = {
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
	print("Resources initialized: ", initial_resources)
	return initial_resources


func update_inventory(current_inventory: Dictionary, label: String, change_amount: float) -> Dictionary:
	var resources: Dictionary = current_inventory
	resources[label] += change_amount
	return resources
