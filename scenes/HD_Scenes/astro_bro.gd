extends CharacterBody2D

const SPEED = 200.0
const JUMP_VELOCITY = -250.0
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	# Añadir la gravedad.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Manejar el salto.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Obtener la dirección de entrada y manejar el movimiento/desaceleración.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		sprite_2d.animation = "Walk"  # Cambiar a la animación de caminar
		sprite_2d.flip_h = (velocity.x < 0)  # Voltear el sprite si va hacia la izquierda
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		sprite_2d.animation = "Idle"  # Cambiar a la animación de inactividad

	# Mover al personaje.
	move_and_slide()
