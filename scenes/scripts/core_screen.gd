extends Control

@rpc('any_peer')
func update_gui(data):
	PlayerData.set_user_data(data)
	player_data_changed()

func _ready():
	player_data_changed()

func close_this_scene():
	queue_free()

func player_data_changed():
	get_node('team_panel/team_label').text = 'Team: ' + str(PlayerData.team)
	get_node('resources_panel/stone_label').text = str(PlayerData.stone) 
	get_node('resources_panel/wood_label').text = str(PlayerData.wood) 
	get_node('resources_panel/food_label').text = str(PlayerData.food) 
	get_node('resources_panel/gold_label').text = str(PlayerData.gold) 

func _on_research_panel_button_up():
	SceneManager.change_to_research_scene()

func _on_food_button_up():
	increase_resource.rpc_id(1, 1, Globals.food_index)

func _on_wood_button_up():
	increase_resource.rpc_id(1, 1, Globals.wood_index)

func _on_stone_button_up():
	increase_resource.rpc_id(1, 1, Globals.stone_index)

#RPC para replicar en server
@rpc("any_peer")
func increase_resource(add_amount: int ,resource_index: int):
	pass
