class_name ResourceDatabase
# Central dictionary resource for storing/iterating in-game resource counts.


func initialize_database(): #called at game start
	var resources = {
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
