extends Control


@rpc("any_peer")
func client_to_game_screen(_user_data):
	PlayerData.set_user_data(_user_data)
	SceneManager.change_to_core_scene()

func _on_enter_button_up():
	var user : TextEdit = get_node("Panel/userText")
	check_data.rpc_id(1, user.text)

func close_this_scene():
	queue_free()

#RPC for replication in SV
@rpc("any_peer")
func check_data(_data):
	pass

@rpc
func to_customization_screen():
	pass

@rpc
func invalid_data():
	pass