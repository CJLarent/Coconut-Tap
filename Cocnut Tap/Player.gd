extends KinematicBody2D
# Declare member variables here. Examples:
var score = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	print("the score starts at zero!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	print ("YAY!")
	score=score + 1 
	print("YAY!", score)
	
	
