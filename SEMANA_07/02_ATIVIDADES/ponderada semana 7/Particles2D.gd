extends Particles2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if emitting == false:
		queue_free()
		


func _on_Area_body_entered(body):
	if body.name == "MeteorinBody":
		print("opa") 
		emitting = true # Replace with function body.
