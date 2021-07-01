extends Control




func _tweenTest():
	#								object      field      start pos                                        end pos           time   transistion type    ease type
	$LucyTween.interpolate_property($DavePix, "position",Vector2($DavePix.position.x, $DavePix.position.y), Vector2(900, 900), 3,Tween.TRANS_BOUNCE, Tween.EASE_OUT)
	pass


func _on_Button_pressed():
	_tweenTest()
	$LucyTween.start()
	pass # Replace with function body.
