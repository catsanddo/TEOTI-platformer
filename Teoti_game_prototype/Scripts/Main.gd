extends Node2D

func _ready():
	scale_window()

# bad
func scale_window():
	var window_size = OS.get_window_size()
	OS.set_window_size(Vector2(window_size.x*4, window_size.y*4))

func _on_EndPoint_end_point_triggered():
	$Player.position = $PlayerSpawn.position
	$Camera2D.position = $Player.position
