extends Sprite2D

@export var mask_viewport : Viewport
@export var mask_position : Vector2
@export var mask_scale : Vector2 = Vector2(1.0, 1.0)

func _process(delta):
	var mask_texture = mask_viewport.get_texture()
	material.set_shader_param("mask_texture", mask_texture)
	material.set_shader_param("mask_offset", mask_position / mask_scale)
	material.set_shader_param("mask_scale", mask_scale)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
