extends Node

#This class handles the Switching between GUI Screens

var mainmenu = preload("res://scenes/gui/MainMenu.tscn")

func _ready():
	pass # Replace with function body.

func show_MainMenu():
	var main_menu = mainmenu.instance()
	add_child(main_menu)
	main_menu.set_name("MainMenu")
	main_menu.connect("joingame",get_tree().get_root().get_node("Main"),"init_client")
	main_menu.connect("hostgame",get_tree().get_root().get_node("Main"),"init_server")
	
func hide_MainMenu():
	$MainMenu.queue_free()