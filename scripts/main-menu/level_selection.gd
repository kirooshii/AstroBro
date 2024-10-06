extends Control

func _on_lavaplanet_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/lava-scenes/lava-planet-game.tscn")
	


func _on_waterplanet_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Kepler_Scenes/kepler_game.tscn")



func _on_rockyplanet_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/HD_Scenes/hd-game.tscn")
