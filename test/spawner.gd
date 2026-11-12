extends Node2D

var trashList : Array
var localPos = self.position
const TRASH = preload("uid://dr8e0x336au2u")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#while true :
		#OS.delay_msec(1000)
		#var trash = preload("res://trash.gd")
		#var nTrash = trash.new()
		#nTrash.position = localPos
		#
		#trashList.insert(-1, nTrash)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

#func _on_timer_timeout() -> void:
	#var nTrash = TRASH.instantiate()
	#trashList.insert(-1, nTrash)
	#trashList.append(nTrash)
	#add_child(nTrash)
	#nTrash.position = localPos
