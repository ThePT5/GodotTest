class_name Trash
extends RigidBody2D

## This is the class for Trash

@export_enum("rec", "nonRec") var trashType

func _ready() -> void:
	print("showting")

func get_trashType() :
	return trashType	

#func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		#self.position = get_viewport().get_mouse_position()

#func _process(delta: float) -> void:
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) :
		#self.position = get_viewport().get_mouse_position()
