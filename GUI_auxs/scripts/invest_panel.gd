extends Panel

var selected_item : int

func _ready():
	selected_item = 404

func _on_item_list_item_selected(index:int):
	selected_item = index

func _on_button_up():
	if (selected_item != 404):
		var txt = get_node('TextEdit').text
		var quantity = int(txt)

		if quantity:
			Factions.invest_quantity.rpc_id(1, quantity, selected_item, PlayerData.team)
		else:
			print('nah')

		get_node('ItemList').deselect_all()
		selected_item = 404
	else:
		print('falta elegir item')
