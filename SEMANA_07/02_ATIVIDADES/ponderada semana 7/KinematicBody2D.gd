extends KinematicBody2D
var vel = 60

func _andada():
	if Input.is_action_just_pressed("ui_up"):
		self.position.y -= vel
	else:
		self.position.y += 5
		
	if Input.is_action_pressed("ui_right"):
		self.position.x += 10
		$Dino.flip_h = true
		
	if Input.is_action_pressed("ui_left"):
		self.position.x -= 10
		$Dino.flip_h = false


func _physics_process(delta):
	
	_andada()
	move_and_slide(Vector2(0,0))





func _on_Area_dino_body_entered(body):
	if body.name == "MeteorinBody":
		get_tree().change_scene("res://GameOver.tscn")
