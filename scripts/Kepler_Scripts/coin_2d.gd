extends Area2D

func _ready() -> void:
	# Ready function, no additional setup needed for now
	pass

# Function that is called when the body (player) collides with the coin
func _on_body_entered(body: Node2D) -> void:
	queue_free()  # Remove the coin
	# Information display functionality has been removed
