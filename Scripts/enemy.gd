extends CharacterBody2D

@export var speed: float = 50
@export var max_speed: float = 50
@export var weight: float = 50

@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("Player")


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta * weight
	var direction: Vector2 = position.direction_to(player.position)
	velocity += direction * speed * delta
	velocity = velocity.limit_length(max_speed)
	move_and_slide()


func _on_hitbox_body_entered(body: Node2D) -> void:
	body.queue_free()
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
