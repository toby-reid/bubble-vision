extends AnimatedSprite2D

@export var mask_viewport : Viewport
@export var mask_position : Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mask_viewport = $"../../SubViewport"
	material = ShaderMaterial.new()
	material.shader = load("res://Scripts/BubbleVision/evil_world.gdshader")

func _process(_delta):
	var mask_texture = mask_viewport.get_texture()
	material.set_shader_parameter("mask_texture", mask_texture)
	material.set_shader_parameter("mask_offset", mask_position)
