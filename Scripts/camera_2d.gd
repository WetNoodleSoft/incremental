extends Camera2D

@onready var camera: Camera2D = $"."
@onready var scroll_speed = Vector2(1.0, 0.0)


func _process(_delta: float) -> void:
	if Input.is_action_pressed("Left Scroll"):
		camera.position -= scroll_speed
	if Input.is_action_pressed("Right Scroll"):
		camera.position += scroll_speed
	return
