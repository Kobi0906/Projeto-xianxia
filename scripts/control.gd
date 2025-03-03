class_name XianxiaGame
extends Control

@export var label : Label
@export var timer : Timer

var qi : int = 0


func _ready() -> void:
	update_label_text()
	timer.start()


func gather_qi() -> void:
	qi += 1
	update_label_text()


func update_label_text() -> void:
	label.text = "QI: %s" %qi


func _on_timer_timeout() -> void:
	gather_qi()
