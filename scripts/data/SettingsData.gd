extends Node

var player_name : String

func _ready():
	var file = File.new()
	file.open("res://data/settings.json", File.READ)
	var result = JSON.parse(file.get_as_text())
	file.close()
	if result.error != OK:
		printerr("error parsing settings.json")
		print(result.get_error_line())
		print(result.get_error_string())
		return null
	else:
		print("settings has been parsed correctly")
	var settings = result.get_result().get("Settings")
	var player_name = settings.get("player_name")
	print("player_name" + player_name)
	
func apply_settings():
	var dict = {"Settings" : {"player_name" : player_name}}
	
	
