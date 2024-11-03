extends Area2D

@onready var timer = $Timer


func _on_body_entered(body):
	print(" you died !")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free() #bodynin (yani playerın) collision shape nodeunu alıp queue_free() ile siliyoruz. 
	#Bu sayede player öldüğünde platformdan düşer
	
	timer.start()
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
