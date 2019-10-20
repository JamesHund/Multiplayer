extends MarginContainer

signal joingame(ip,port,password)

func _on_JoinButton_pressed():
	var ip = $VBoxContainer/HSplitContainer/VBoxContainer/IPContainer/IPField.get_text()
	var password = $VBoxContainer/HSplitContainer/VBoxContainer/PasswordContainer/PasswordField.get_text()
	var port = $VBoxContainer/HSplitContainer/VBoxContainer/PortContainer/PortField.get_text()
	if NetworkValidator.validate_port(port) && NetworkValidator.validate_IP(ip):
		emit_signal("joingame", ip, port, password)

