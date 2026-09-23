extends Node

var total_coins: int = 0
var tries: int = 0

func coin_collected(value: int):
	total_coins += value
	EventController.emit_signal("coin_collected", total_coins)

func fail():
	tries += 1
	EventController.emit_signal("fail", tries)
