extends CharacterBody2D

var host: CharacterBody2D

func _ready() -> void:
	host = $"../../../DoubleBubbleClone/Bubble"

func _physics_process(_delta: float) -> void:
	position = host.position
	scale = host.scale
