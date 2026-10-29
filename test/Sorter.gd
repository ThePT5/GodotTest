extends Area2D

@export_enum("rec", "nonRec") var trashType

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	print(body_rid)
	body.queue_free()
