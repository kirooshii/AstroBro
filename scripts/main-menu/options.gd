extends Control

@onready var volume_slider: HSlider = $VBoxContainer/HBoxContainer/VBoxContainer/HSlider

func _ready():
	# Set initial slider value based on current volume
	volume_slider.value = MusicPlayer.get_volume()

	# Connect the slider's value_changed signal to our method
	volume_slider.connect("value_changed", _on_volume_changed)

func _on_volume_changed(value):
	# Set the volume directly in decibels
	MusicPlayer.set_volume(value)
	
#click button to return to main menu
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main-menu/main-menu.tscn")
