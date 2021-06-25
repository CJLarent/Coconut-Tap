extends KinematicBody2D
# Declare member variables here. Examples:



# Called when the node enters the scene tree for the first time.
func _ready():
	print("the score starts at zero!")
	pass



func _on_Button_pressed():

	Engine.score= Engine.score + 1
	if (Engine.score== 5):
		print ("Nice!")
		
	
	else:
		pass 
	
	


func _on_Exit_Button_button_up():
	get_tree().quit()
