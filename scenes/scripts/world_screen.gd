extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Factions.faction_points_updated.connect(update_faction_points_ui)
	Factions.ask_for_faction_points.rpc_id(1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_faction_points_ui():
	get_node('points_panel/t1_points_label').text = str(Factions.factions_points[0])
	get_node('points_panel/t2_points_label').text = str(Factions.factions_points[1])


func _on_back_button_up():
	SceneManager.change_to_core_scene()


func close_this_scene():
	queue_free()