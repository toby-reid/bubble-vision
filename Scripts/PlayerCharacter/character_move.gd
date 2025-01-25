extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -200.0
var sprite: AnimatedSprite2D

func _ready() -> void:
	sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			velocity.y = JUMP_VELOCITY
	else:
		if velocity.y < 0:
			sprite.play("jumping")
		else:
			sprite.play("falling")
			if Input.is_action_pressed("jump"):
				velocity.y -= get_gravity().y * delta / 2

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
		sprite.flip_h = direction > 0
		if is_on_floor():
			sprite.play("walking")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if is_on_floor():
			if Input.is_action_pressed("duck"):
				sprite.play("ducking")
			else:
				sprite.play("idle")

	move_and_slide()
