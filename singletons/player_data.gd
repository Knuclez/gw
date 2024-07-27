extends Node

signal data_changed

var team : int 
var wood : int = 1
var stone : int = 5
var gold : int = 0 
var food : int = 10

@rpc
func give_data_to_client(_data):
	team = _data
	data_changed.emit()


#RPC to replicate on server
@rpc("any_peer")
func ask_server_for_data():
	pass	