extends MarginContainer


@onready var continue_button: Button = $VBoxContainer/HBoxContainer/Continue

func _ready() -> void:
	continue_button.grab_focus()


func _on_continue_pressed() -> void:
	# Get scene they died on or a checkpoint
	# Reload the scene and respawn
	# For testing:
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/TitleScreen.tscn")
