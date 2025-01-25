extends Area2D

var player: CharacterBody2D

func _ready() -> void:
	player = $"../../PlayerCharacter/CharacterBody2D"

func _process(_delta: float) -> void:
	if overlaps_body(player):
		player.queue_free()
		get_tree().change_scene_to_file("res://Scenes/Levels/" + get_meta("next_room") + ".tscn")
