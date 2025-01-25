extends SubViewport

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sprite = $"../HappyWorld/Sprite2D"
	size = sprite.texture.get_size() * sprite.transform.get_scale()
