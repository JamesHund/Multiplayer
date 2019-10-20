extends Node2D

const MAX_CLIENTS = 5
var server_password

func _ready():
	$GUIManager.show_MainMenu()

func init_server(port,password):
	$GUIManager.hide_MainMenu()
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(port, MAX_CLIENTS)
	get_tree().set_network_peer(peer)
	server_password = password
	$LevelManager.load_world("DefaultWorld")
	
func init_client(ip, port, password):
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(ip, port)
	get_tree().set_network_peer(peer)
	

