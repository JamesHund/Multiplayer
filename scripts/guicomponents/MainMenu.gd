extends MarginContainer

func _on_HostGame_pressed():
	print("Host Game pressed")

func _on_JoinGame_pressed():
	print("Join Game pressed")

func _on_Settings_pressed():
	print("Settings pressed")

func _on_Exit_pressed():
	get_tree().quit()
