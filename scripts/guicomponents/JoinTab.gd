extends MarginContainer

signal joingame(ip,port,password)

func _on_JoinButton_pressed():
	var password = $VBoxContainer/HSplitContainer/VBoxContainer/PasswordContainer/PasswordField.get_text()
	if !$VBoxContainer/HSplitContainer/VBoxContainer/PortContainer/PortField.get_text().is_valid_integer():
		printerr("Port not valid")
		return
	var port = $VBoxContainer/HSplitContainer/VBoxContainer/PortContainer/PortField.get_text().to_int()
	if port > 0 && port < 65536:
		emit_signal("hostgame", port, password)
	else:
		printerr("port not in valid range")
