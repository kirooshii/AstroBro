extends Control

#click button to play
	# make functional with changing destination file
#func _on_play_pressed() -> void:
	#get_tree().change_scene_to_file("res://scenes/game.tscn")

#click button to go the settings
func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")
	
#click button to exit the game
func _on_exit_pressed() -> void:
	get_tree().quit( )
