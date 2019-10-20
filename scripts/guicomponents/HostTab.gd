extends MarginContainer

signal hostgame(port, password)

func _on_HostButton_pressed():
	var password = $VBoxContainer/HSplitContainer/VBoxContainer/PasswordContainer/PasswordField.get_text()
	var port = $VBoxContainer/HSplitContainer/VBoxContainer/PortContainer/PortField.get_text()
	if NetworkValidator.validate_port(port):
		emit_signal("hostgame", port, password)
	else:
		printerr("port not valid")
	