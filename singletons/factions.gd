extends Node

signal faction_data_updated
signal faction_points_updated

##player faction data
var f_stone
var f_wood 
var f_food 
var f_gold

##all factions data
var factions_points = []

@rpc("any_peer")
func update_faction_data(data):
	var resources = data['resources']
	f_stone = resources[Globals.stone_index]
	f_wood = resources[Globals.wood_index]
	f_food = resources[Globals.food_index]
	f_gold = resources[Globals.gold_index]

	faction_data_updated.emit()

@rpc("any_peer")
func receive_faction_points(points : Array):
	factions_points = points

	faction_points_updated.emit()

#RPC to be called on server
@rpc("any_peer")
func ask_for_player_faction_data():
	pass

@rpc("any_peer")
func invest_quantity(quantity : int, resource_index : int, faction_index : int):
	pass


@rpc("any_peer")
func ask_for_faction_points():
	pass