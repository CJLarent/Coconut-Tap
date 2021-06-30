extends Node2D

onready var g_Inventory = get_node("/root/g_Inventory")

var coinsPerClick = 1

func _on_Coconut_Button_pressed():
	g_Inventory.coins += 1
	
	print(g_Inventory.coins)
	pass 
