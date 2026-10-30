extends Node2D

var trashList : Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true :
		OS.delay_msec(1000)
		var trash = preload("res://trash.gd")
		var nTrash = trash.instance()
		trashList.insert(-1, nTrash)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
