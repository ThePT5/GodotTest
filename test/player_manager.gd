class_name PlayerManager
extends Area2D

var selectedObject

func _process(delta: float) -> void:
	self.position = get_viewport().get_mouse_position()
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and selectedObject != null:
		selectedObject.position = get_viewport().get_mouse_position()

func _on_body_entered(body: Node2D) -> void:
	print(body)
	if selectedObject == null :
		selectedObject = body

func _on_body_exited(body: Node2D) -> void:
	selectedObject = null
