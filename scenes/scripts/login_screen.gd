extends Control

@rpc
func to_game_screen():
	SceneManager.change_to_core_scene()

#TODO
@rpc
func to_customization_screen():
	pass

#TODO
@rpc
func invalid_data():
	pass

func _on_enter_button_up():
	var user : TextEdit = get_node("Panel/userText")
	check_data.rpc_id(1, user.text)

func close_this_scene():
	queue_free()
	

#RPCS to replicate on server
@rpc("any_peer")
func check_data(_data):
	pass