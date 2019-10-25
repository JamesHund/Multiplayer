extends Node

var settings
var player_name

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
	settings = result.get_result()
	player_name = settings.get("player_name")
	print_settings()
	
func apply_settings():
	var dict = {"player_name" : player_name}
	var file = File.new()
	if file.open("res://data/settings.json", File.WRITE) != 0:
		print("Error opening settings file for writing")
		return
	file.store_line(JSON.print(dict))
	file.close()
	
func print_settings():
	print("player_name: " + player_name)
	
	
	
