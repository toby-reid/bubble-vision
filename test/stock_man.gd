extends Sprite2D

var speed = 0
var direction = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	speed += 1
	move_toward(0, speed, delta)
