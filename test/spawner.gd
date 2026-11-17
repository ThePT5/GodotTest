extends Node2D

var trashList : Array
var localPos = self.position
var TRASH = preload("res://Trash.tscn")

func _on_timer_timeout() -> void:
	var nTrash = TRASH.instantiate()
	trashList.append(nTrash)
	add_child(nTrash)
