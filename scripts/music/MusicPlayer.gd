extends Node

var music_player: AudioStreamPlayer

func _ready():
	# Create an AudioStreamPlayer node
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	
	# Load your music file
	var music = load("res://assets/music/lobby.mp3")  # Replace with your music file path
	music_player.stream = music
	
	# Set the music to loop
	music_player.stream.loop = true
	
	# Start playing the music
	music_player.play()

func _process(delta):
	# Ensure music is always playing
	if not music_player.playing:
		music_player.play()

# New method to set volume
func set_volume(volume_db: float):
	music_player.volume_db = volume_db

# New method to get current volume
func get_volume() -> float:
	return music_player.volume_db
