extends Node


func _ready():
	init_network()
	SceneManager.init()

func init_network():
	var peer = ENetMultiplayerPeer.new()
	peer.create_client("127.0.0.1", 1014)
	multiplayer.multiplayer_peer = peer
