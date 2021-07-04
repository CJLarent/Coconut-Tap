extends Node2D
onready var g_Inventory = get_node("/root/g_Inventory")

var ticks = 0
var timer = null
var clockSwitch = true
var frameRate = 60
var dropTime = 10

func _ready():
	randomize()
	_randomSpawn()
	
	pass
	
func _randomSpawn():
	clockSwitch = true
	get_node("GoldenCoconut").visible = false
	get_node("GoldenCoconut").position.y = 0
	get_node("GoldenCoconut").position.x = randi()% 1920 + 120
	get_node("GoldenCoconut").speed = randi()%10+1
	

	timer = randi()% 200+120  #fix this
	
	pass	

func _process(delta):
	if g_Inventory.goldenCoconut <= 6:
		_goldenCoconutTimer()
		pass
	else: 
	
		pass	
	
		
	pass

func _goldenCoconutTimer():
	ticks  +=1
	
	if clockSwitch == true:
		
		print(ticks)
	
		if ticks >= timer:
			$GoldenCoconut._activate_golden_coconut()
			clockSwitch = false
			
			#when closck switch is off
			timer = dropTime*frameRate
			ticks = 0
			pass
		pass
	else:
		if ticks >= timer:
			_randomSpawn()
			pass
		
		pass
		
	pass
