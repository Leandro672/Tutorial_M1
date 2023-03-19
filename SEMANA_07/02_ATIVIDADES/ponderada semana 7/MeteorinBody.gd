extends KinematicBody2D

var vel = 4

func _ready():
	pass 

func _caindo_dos_ceus():
	self.position.y += vel


func _physics_process(delta):
	_caindo_dos_ceus()
	move_and_slide(Vector2())



func _on_Timer_timeout():
	vel +=2

	
