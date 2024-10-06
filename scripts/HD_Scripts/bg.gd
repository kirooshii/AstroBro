extends ParallaxBackground

var scrolling_speed = 100  # Agrega el signo igual

func _process(delta: float):
	scroll_offset.x -= scrolling_speed * delta  # Corrige el nombre de la variable
