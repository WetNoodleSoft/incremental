extends Control

@onready var start_button: Button = $CenterContainer/PanelContainer/Button
var main_scene: PackedScene = preload("res://Scenes/main.tscn")

func _ready() -> void:
	start_button.pressed.connect(_start_pressed)
	return


func _process(_delta: float) -> void:
	return


func _start_pressed() -> void:
	get_tree().change_scene_to_packed(main_scene)
	return
