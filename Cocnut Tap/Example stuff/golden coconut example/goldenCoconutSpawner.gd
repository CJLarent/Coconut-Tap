extends Node2D
onready var g_Inventory = get_node("/root/g_Inventory")
onready var timer = get_node("Timer")
var viewportbox := get_viewport_rect()
var ticks = 0
var minutes = 0 
var clockSwitch = true
var frameRate = 60
var dropTime = 10


func _ready():
	timer.start()
	randomize()
	_randomSpawn()
	
	
	
	pass
	
func _randomSpawn():
	clockSwitch = true
	get_node("GoldenCoconut").visible = false
	get_node("GoldenCoconut").position.y = 0
	get_node("GoldenCoconut").position.x = randi()% 1920 + 120
	get_node("GoldenCoconut").speed = randi()%10+1

	

	timer = randi()% 400+40  #fix this
	
	

func _process(delta):
	rotate(0.2*delta)
	ticks  +=1*delta
	
	if clockSwitch == true:
		
		
		
	
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
	if g_Inventory.goldenCoconut <= 6:
		_goldenCoconutTimer()
		pass
	else: 
		print ("Greater then 6 !!")
		g_Inventory.goldenCoconut=0
		
	
		
	pass

func _goldenCoconutTimer():
	
		
	pass


func _on_Timer_timeout():
	_randomSpawn()
	print ("Timer Finshed")
