extends Sprite2D

var host: Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	host = $"../../../../PlayerCharacter/Bubble/Sprite2D"

func _physics_process(_delta: float) -> void:
	rotation = host.rotation
	scale = host.scale
