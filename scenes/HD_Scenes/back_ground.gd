extends ParallaxBackground

var scrolling_speed: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Mueve el fondo
	scroll_offset.x -= scrolling_speed * delta
