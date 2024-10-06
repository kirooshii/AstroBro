extends Control

#click button to return to main menu
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/main-menu.tscn")
