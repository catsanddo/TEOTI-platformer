extends Area2D

signal end_point_triggered

func _on_EndPoint_body_entered(body):
	emit_signal("end_point_triggered")
