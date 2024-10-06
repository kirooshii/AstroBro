extends Control

# Assuming you have a reference to your pause menu node.
@onready var pause_menu: Control = $"."

func _ready():
	# Make sure the pause menu is hidden when the scene starts
	pause_menu.visible = false

func resume():
	get_tree().paused = false
	pause_menu.visible = false  # Hide the pause menu when resuming

func pause():
	get_tree().paused = true
	pause_menu.visible = true  # Show the pause menu when pausing

func testEsc():
	if Input.is_action_just_pressed("esc"):
		if !get_tree().paused:
			pause()
		else:
			resume()

# Handle the restart button click
func _on_restart_pressed():
	resume()
	get_tree().reload_current_scene()

# Handle the settings button click
#func _on_settings_pressed():
#	get_tree().change_scene_to_file("res://scenes/main-menu/options.tscn")


#func _on_exit_to_main_menu_pressed() -> void:
#	get_tree().change_scene_to_file("res://scenes/main-menu/main-menu.tscn")

func _process(delta):
	testEsc()
