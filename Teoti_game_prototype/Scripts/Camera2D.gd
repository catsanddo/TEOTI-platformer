extends Camera2D

onready var player = get_parent().get_node("Player")
	
func _physics_process(delta):
	position.y = lerp(position.y, player.position.y, 0.25)
	position.x = lerp(position.x, player.position.x, 0.5)
