extends Area2D

@export_enum("rec", "nonRec") var trashType
signal gameManager

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body is not Trash:
		print
	elif body.get_trashType() == trashType and body is Trash :
		print("Yes")
		emit_signal("gameManager", )
	else : 
		print("No")
	body.queue_free()
