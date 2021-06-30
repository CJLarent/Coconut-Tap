extends KinematicBody2D
# packing the scene to reused 
export(PackedScene)var Golden_Cocnut
onready var Timer = $"Golden Timer" # ref to the timer node  
var vewport = get_viewport()


# pre load the assest if needed  
#onready var Golden_Image = preload("res://Assets/Scenes/Golden Cocunut .tscn")
export var Time_In_Seconds = 2

export var Num_Cocunuts =10
var Total_Cocunuts_Left 

var grav  : float = 25

#vectors 
var vel = Vector2.ZERO# (0.0)
# Called when the node enters the scene tree for the first time.
func _ready():
	Total_Cocunuts_Left = Num_Cocunuts
	Timer.wait_time = Time_In_Seconds
	Timer.start()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# give grav to make ojects fall 
	vel.y= grav 
	self.move_and_slide(vel)
func _on_Golden_Timer_timeout():
	if Total_Cocunuts_Left ==0: 
		Golden_Cocnut.instance()
		Golden_Cocnut.get_parent()
		Golden_Cocnut.add_child(Golden_Cocnut)
		Total_Cocunuts_Left-=1 
		print ("total",Total_Cocunuts_Left)
# spawn in cocnut after the timer done 
		
	
	
	


func _on_Golden_Cocunut__mouse_entered():
	print ("pressed")
