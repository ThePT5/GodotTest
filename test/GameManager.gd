extends Node

var points : int

func _ready() -> void:
	$Sorter.connect("gameManager", incrementPoint)

func incrementPoint() -> void:
	print("Hi")
