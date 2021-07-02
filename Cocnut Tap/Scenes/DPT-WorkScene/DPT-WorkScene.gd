extends Node2D


func _ready():
	$Tweeny.interpolate_property($Camera2D, "position",Vector2(0,0), Vector2(1920,0), 10,Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tweeny.start()
	pass
