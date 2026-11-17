class_name Trash
extends RigidBody2D

var released = true

## This is the class for Trash

@export_enum("rec", "nonRec") var trashType
var randomNumber = randi_range(1,2)
func _ready() -> void:
	if randomNumber == 1:
		trashType = 0
	elif randomNumber == 2:
		trashType = 1
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if released != true:
		state.transform.origin = get_viewport().get_mouse_position()

func setReleased(v) -> void:
	released = v

func get_trashType() :
	return trashType
