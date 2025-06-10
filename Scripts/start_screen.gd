extends Control

@onready var new_game_button: Button = $CenterContainer/PanelContainer/VBoxContainer/NewGame
@onready var new_game: bool = true

const MATERIALINVENTORY: ResourceDatabase = preload("res://Resources/inventory.tres")

var main_scene: PackedScene = preload("res://Scenes/main.tscn")


func _ready() -> void:
	new_game_button.pressed.connect(_new_game_pressed)
	return


func _process(_delta: float) -> void:
	return


func _new_game_pressed() -> void:
	MATERIALINVENTORY.initialize_inventory() #instruct inventory database to set resources to new game values
	get_tree().change_scene_to_packed(main_scene)
	return
