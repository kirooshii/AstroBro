extends Control
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer

# Play the animation when the scene is loaded
func _ready():
	$AnimatedSprite2D.play("Rocket")
	$Timer.start() # Start the timer when the scene is ready

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/lava-scenes/lava-planet-game.tscn")
