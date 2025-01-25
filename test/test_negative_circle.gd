extends CharacterBody2D


const SPEED = 200.0


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("test_left", "test_right", "test_up", "test_down")
	velocity = direction * SPEED

	move_and_slide()
