extends Node2D

var score = 0
var spawnPoint = Vector2()


#get_tree().call_group("Camera" , "_treme", 3)


func _ready(): 
	pass
	
func _process(delta):
	randomize()
	spawnPoint.y = $Position2D.position.y
	spawnPoint.x = rand_range(1,1000)
	$Label.text = str(score)

func _on_Area_body_entered(body):
	if body.name == "MeteorinBody":
		get_tree().call_group("Camera" , "_treme", 3)
		$MeteorinBody.position = spawnPoint
		score +=1
		
