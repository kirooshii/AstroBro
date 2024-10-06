extends Control

#click button to play
func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/level-selection.tscn")


#click button to go the settings
func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/options.tscn")
	
#click button to exit the game
func _on_exit_pressed() -> void:
	get_tree().quit( )
