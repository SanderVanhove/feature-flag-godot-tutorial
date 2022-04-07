extends Node2D


onready var _score_label: Label = $CanvasLayer/CenterContainer/VBoxContainer/ScoreLabel
onready var _is_demo_label: Label = $CanvasLayer/IsDemoLabel


var _score: int = 0


func _ready() -> void:
	_is_demo_label.visible = OS.has_feature("Demo")


func _on_Button_pressed():
	_score += 1
	_score_label.text = str(_score)
