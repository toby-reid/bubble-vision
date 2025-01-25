extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print_debug("Powerup collected!")
	queue_free()
