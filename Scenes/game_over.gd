extends MarginContainer


func _on_continue_pressed() -> void:
	# Get scene they died on or a checkpoint
	# Reload the scene and respawn
	# For testing:
	get_tree().change_scene_to_file("res://test/test_scene.tscn")


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/TitleScreen.tscn")
