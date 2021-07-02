extends RichTextLabel

var wait = 0
var timer = 30
var resetTime = 60
var startWait = true

func _ready():
	percent_visible = 0
	pass

func _process(delta):
	if startWait == false:
		if percent_visible <=0.6:
			percent_visible += 0.04
		else:
			wait +=1
			if wait >= timer:
				visible_characters +=1
				wait=0
				pass
			if visible_characters >= 15:
				percent_visible = 0
				visible_characters = 0
				
				startWait = true
				wait = 0
				pass
	else:
		wait +=1
		if wait >= resetTime:
			startWait= false
		pass			
	
	pass
