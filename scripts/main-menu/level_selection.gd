extends Control

func _on_lavaplanet_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/lava-loading-screen.tscn")
	


func _on_waterplanet_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/kepler-loading-screen.tscn")


func _on_rockyplanet_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/hd-loading-screen.tscn")
