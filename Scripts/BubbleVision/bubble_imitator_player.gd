extends CharacterBody2D

var host: CharacterBody2D
var base: Node2D

func _ready() -> void:
	host = $"../../../PlayerCharacter/Bubble"
	print(host)
	for possible_base in [$"../../HappyWorld/Sprite2D",
						$"../../EvilWorld/Sprite2D",
						$"../../HappyWorld/AnimatedSprite2D",
						$"../../HappyWorld/AnimatedSprite2D"]:
		if possible_base != null:
			base = possible_base
			break

func _physics_process(_delta: float) -> void:
	var texture = base.texture if base is Sprite2D \
		else base.sprite_frames.get_frame_texture("idle", 0)
	var center_offset = (texture.get_size() * base.scale / 2) if base.centered \
		else Vector2(0, 0)
	global_position = host.global_position - (base.global_position - base.offset - center_offset)
