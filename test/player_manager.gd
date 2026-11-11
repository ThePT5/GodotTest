class_name PlayerManager
extends Area2D

var selectedObject
var leftMouseButtonState = false

func _process(delta: float) -> void:
	self.position = get_viewport().get_mouse_position()
	if selectedObject == null:
		print
	elif Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		leftMouseButtonState = true
		selectedObject.position = self.position
	elif Input.is_action_just_released("LEFT_MOUSE_BUTTON"):
		leftMouseButtonState = false
		selectedObject = null

func _on_body_entered(body: Node2D) -> void:
	if leftMouseButtonState == false:
		selectedObject = body
