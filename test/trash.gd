class_name Trash
extends RigidBody2D

var released = true
var start = true

## This is the class for Trash

@export_enum("rec", "nonRec") var trashType
var randomNumber = randi_range(1,2)
func _ready() -> void:
	if randomNumber == 1:
		trashType = 0
	elif randomNumber == 2:
		trashType = 1

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if start:
		state.linear_velocity = Vector2(70, 0)
		start = false

	if released != true:
		state.transform.origin = get_viewport().get_mouse_position()
		state.linear_velocity = Input.get_last_mouse_velocity()

func setReleased(v) -> void:
	released = v

func get_trashType() :
	return trashType
