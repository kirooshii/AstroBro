extends Node

# Path to the new scene you want to load when the player presses Esc
var scene_to_load = "res://scenes/main-menu/esc_menu.tscn"

# Called every frame. Checks for key input.
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):  # "ui_cancel" is usually bound to the Esc key
		load_scene()

# Function to load the specified scene
func load_scene():
	print("esc menu")
	var new_scene = load(scene_to_load) as PackedScene  # Cast the loaded scene to PackedScene
	if new_scene:  # Check if the scene was loaded correctly
		var scene_instance = new_scene.instance()  # Instance the scene
		get_tree().root.add_child(scene_instance)  # Add the new scene to the scene tree
	else:
		print("Failed to load scene: " + scene_to_load)
