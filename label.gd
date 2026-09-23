extends Control

@onready var label = $Label

func _ready():
	EventController.connect("fail", on_event_fail)

func on_event_fail(value) -> void:
	label.text = str(value) + " tries"
