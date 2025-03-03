class_name XianxiaGame
extends Control
## Generator prototype generatin QI every second.

## References for nodes.
@export var label : Label
@export var timer : Timer


## Game variables, currencies and levels.
var qi : int = 0


## On start, update the label and start the timer.
func _ready() -> void:
	update_label_text()
	timer.start()


## Function that increases QI value.
func gather_qi() -> void:
	qi += 1
	update_label_text()


## Update the label displaying the current QI amount.
func update_label_text() -> void:
	label.text = "QI: %s" %qi

## Generate QI every second
func _on_timer_timeout() -> void:
	gather_qi()
