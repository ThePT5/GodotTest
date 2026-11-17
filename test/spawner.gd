extends Node2D

var trashList : Array
var localPos = self.position
const TRASH = preload("uid://dr8e0x336au2u")

func _on_timer_timeout() -> void:
	var nTrash = TRASH.instantiate()
	trashList.append(nTrash)
	add_child(nTrash)
