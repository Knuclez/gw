extends Panel


func _ready():
	Factions.faction_data_updated.connect(_on_faction_data_updated)
	Factions.ask_for_player_faction_data.rpc_id(1, PlayerData.team)

func _on_faction_data_updated():
	get_node('stone_label').text = str(Factions.f_stone)
	get_node('wood_label').text = str(Factions.f_wood)
	get_node('food_label').text = str(Factions.f_food)
	get_node('gold_label').text = str(Factions.f_gold)