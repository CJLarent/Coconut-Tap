extends Control




func _tweenTest():
	#								object      field      start pos                                        end pos           time   transistion type    ease type
	$LucyTween.interpolate_property($DavePix, "scale",Vector2(0.25,0.25), Vector2(4,4), 6,Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	pass


func _on_Button_pressed():
	_tweenTest()
	$LucyTween.start()
	pass # Replace with function body.
