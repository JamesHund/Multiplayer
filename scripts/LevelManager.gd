extends Node

var player = preload("res://scenes/Player.tscn")

#This class is for managing all objects and entities that make up the level

func _ready():
	pass # Replace with function body.

remote func load_world(world : String):
	for node in get_children():
		node.queue_free()
	var level = load("res://scenes/levels/" + world + ".tscn")
	add_child(level.instance())

remote func load_players():
	var selfPeerID = get_tree().get_network_unique_id()
	
	var my_player = player.instance()
	my_player.set_name(str(selfPeerID))
	my_player.get_node("Camera2D").make_current()
	my_player.set_network_master(selfPeerID) 
	add_child(my_player)
	
	var count
	if get_parent().players != null:
		for p in get_parent().players:
			var new_player = player.instance()
			player.set_name(str(p))
			player.set_network_master(p)
			add_child(player)
	
	
