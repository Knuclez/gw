extends Node

var id_db : int
var username : String 

var team : int 
var wood : int = 0
var stone : int = 0
var gold : int = 0 
var food : int = 0

func set_user_data(data):
	id_db = data['_id']
	username = data['username']
	team = data['team']
	stone =  data['resources'][Globals.stone_index]
	wood =  data['resources'][Globals.wood_index]
	food =  data['resources'][Globals.food_index]
	gold =  data['resources'][Globals.gold_index]
