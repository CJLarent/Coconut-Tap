extends Node2D
onready var g_Inventory = get_node("/root/g_Inventory")

onready var tweeny = $Tween
var obj = self
var prop = "position"
var start = position 
var end = Vector2(position.x,2000)
var speed = 6
var trans = Tween.TRANS_LINEAR
var easing = Tween.EASE_OUT


func _on_Button_pressed():
	visible= false
	g_Inventory.goldenCoconut +=1
	print("golden CocoNuts:"  + str(g_Inventory.goldenCoconut))
	
	pass 

func _activate_golden_coconut():
	start = position
	end = Vector2(position.x,2000)
	visible= true
	tweeny.interpolate_property(obj,prop,start,end,speed,trans,easing)
	tweeny.start()
	pass
