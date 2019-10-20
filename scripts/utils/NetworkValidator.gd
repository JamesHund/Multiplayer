extends Node

static func validate_port(port):
	if port.is_valid_integer():
		printerr("Port not valid")
		return false
	if port.to_int() > 0 && port.to_int() < 65536:
		return true
	else:
		return false
		
static func validate_IP(ip):
	return true