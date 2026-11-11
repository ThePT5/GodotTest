class_name PlayerManager
extends Area2D

var selectedObject
var leftMouseButtonState = false

func _process(delta: float) -> void:
	self.position = get_viewport().get_mouse_position()
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and selectedObject != null:
		print("Button on")
		leftMouseButtonState = false
		selectedObject.position = get_viewport().get_mouse_position()
	elif Input.is_action_just_released("LEFT_MOUSE_BUTTON") == false:
		if leftMouseButtonState != true:
			selectedObject = null

func _on_body_entered(body: Node2D) -> void:
	print("Entered")
	if selectedObject == null:
		selectedObject = body
