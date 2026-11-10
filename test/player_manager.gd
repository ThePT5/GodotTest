class_name PlayerManager
extends Area2D

var selectedObject

func _process(delta: float) -> void:
	self.position = get_viewport().get_mouse_position()
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and selectedObject != null:
		selectedObject.position = get_viewport().get_mouse_position()
	elif Input.is_mouse_button_pressed(MOUSE_BUTTON_NONE):
		selectedObject = null

func _on_body_entered(body: Node2D) -> void:
	print("Entered")
	if selectedObject == null:
		selectedObject = body
