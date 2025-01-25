extends SubViewport

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sprite = $"../HappyWorld/Sprite2D"
	if sprite == null:
		sprite = $"../EvilWorld/Sprite2D"
	if sprite != null:
		size = sprite.texture.get_size() * sprite.transform.get_scale()
	else:
		sprite = $"../HappyWorld/AnimatedSprite2D"
		if sprite == null:
			sprite = $"../EvilWorld/AnimatedSprite2D"
		var sprite_frames = sprite.sprite_frames
		var texture = sprite_frames.get_frame_texture("idle", 0)
		size = texture.get_size() + sprite.transform.get_scale()
