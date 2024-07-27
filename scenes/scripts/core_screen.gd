extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	PlayerData.data_changed.connect(player_data_changed.bind())

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


#RPC to be replicated on server
@rpc("any_peer")
func increase_resource(resource_index : int):
	pass