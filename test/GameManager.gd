extends Node

var points : int
var sorters : Array
func _ready() -> void:
	for v in get_children():
		if v is Sorter:
			v.connect("point", pointInc)

func pointInc() -> void:
	print("Help")
	points=+1
