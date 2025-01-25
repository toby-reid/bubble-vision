extends Area2D

var player: CharacterBody2D

func _ready() -> void:
	player = $"../../PlayerCharacter/CharacterBody2D"

func _process(_delta: float) -> void:
	if overlaps_body(player):
		# TODO: Test for whether the player has BubbleVision active
		print("Secretly friendly spikes passed")
