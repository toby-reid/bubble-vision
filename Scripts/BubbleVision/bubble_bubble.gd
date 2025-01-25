extends CharacterBody2D

var host: CharacterBody2D

func _ready() -> void:
	host = $"../CharacterBody2D"

func _physics_process(_delta: float) -> void:
	position = host.position
