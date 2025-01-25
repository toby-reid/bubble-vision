extends Sprite2D

@onready var mask_texture = SubViewport.get_texture()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	material.set_shader_param("mask_texture", mask_texture)
	material.set_shader_param("mask_offset", $Mask.global_position)
	material.set_shader_param("mask_scale", Vector2(1.0, 1.0))  # Adjust scale if needed
