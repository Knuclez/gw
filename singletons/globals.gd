extends Node

var http_sv
var stone_index
var wood_index
var food_index
var gold_index

func _ready():
	http_sv = 'http://127.0.0.1:8000'

	stone_index = 0
	wood_index = 1
	food_index = 2
	gold_index = 3