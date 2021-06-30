extends Control

onready var g_Inventory = get_node("/root/g_Inventory")

func _process(delta):
	$CoinText.text = "Coin:" + str(g_Inventory.coins)
	pass
