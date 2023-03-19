extends KinematicBody2D

func _ready():
	pass 

func _caindo_dos_ceus():
	self.position.y += 4


func _physics_process(delta):
	_caindo_dos_ceus()
	move_and_collide(Vector2())
	

