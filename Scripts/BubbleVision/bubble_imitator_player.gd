extends CharacterBody2D

var host: CharacterBody2D
var base: Node2D

func _ready() -> void:
	host = $"../../../PlayerCharacter/Bubble"
	base = $"../../HappyWorld/Sprite2D"

func _physics_process(_delta: float) -> void:
	var center_offset = (base.texture.get_size() * base.scale / 2) if base.centered \
		else Vector2(0, 0)
	global_position = host.global_position - (base.global_position - base.offset - center_offset)
