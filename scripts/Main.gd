extends Node2D

const MAX_CLIENTS = 5
var server_password
var local_ip
var my_info
var players

func _ready():
	$GUIManager.show_MainMenu()

func init_server(port,password):
	$GUIManager.hide_MainMenu()
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(port, MAX_CLIENTS)
	get_tree().set_network_peer(peer)
	server_password = password
	$LevelManager.load_world("DefaultWorld")
	get_tree().connect("network_peer_connected", self, "player_connected")
	print("initialized as server with public ip: " + str(IP.get_local_addresses()[2]))
	print("local ip: " + str(IP.get_local_addresses()[1]))
	
func init_client(ip, port, password):
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client(ip, port)
	get_tree().set_network_peer(peer)
	my_info = SettingsData.player_name
	
func player_connected(id):
	print("player: " + str(id) + " connected")
	rpc_id(id,"register_player", my_info)
	
remote func register_player(info):
	var id = get_tree().get_rpc_sender_id()
	players[id] = info
