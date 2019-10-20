extends MarginContainer

func _on_HostGame_pressed():
	$PanelContainer/RightPanelContainer/TabContainer.set_current_tab(0)

func _on_JoinGame_pressed():
	$PanelContainer/RightPanelContainer/TabContainer.set_current_tab(1)

func _on_Settings_pressed():
	$PanelContainer/RightPanelContainer/TabContainer.set_current_tab(2)

func _on_Exit_pressed():
	get_tree().quit()

func _on__Host_Game__hostgame(port, password):
	print("hosting game at port: " + str(port) + " with password: " + password)
