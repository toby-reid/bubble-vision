extends Sprite2D

@export var mask_viewport : Viewport
@export var mask_position : Vector2
@export var mask_scale : Vector2 = Vector2(1.0, 1.0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mask_viewport = $"../../SubViewport"
	material = get_parent().material

func _process(delta):
	var mask_texture = mask_viewport.get_texture()
	material.set_shader_parameter("mask_texture", mask_texture)
	material.set_shader_parameter("mask_offset", mask_position / mask_scale)
	material.set_shader_parameter("mask_scale", mask_scale)
