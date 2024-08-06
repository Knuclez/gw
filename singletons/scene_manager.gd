extends Node
var current_scene

func init():
	var login_scr = load("res://scenes/login_screen.tscn")
	var login_scene = login_scr.instantiate()
	get_node("/root/main").add_child(login_scene)
	current_scene = login_scene

func change_to_core_scene():
	current_scene.close_this_scene()
	var core_scre = load("res://scenes/core_screen.tscn").instantiate()
	get_node("/root/main").add_child(core_scre)
	current_scene =	core_scre


func change_to_research_scene():
	current_scene.close_this_scene()
	var resch_scre = load("res://scenes/research_screen.tscn").instantiate()
	get_node("/root/main").add_child(resch_scre)
	current_scene =	resch_scre

func change_to_world_scene():
	current_scene.close_this_scene()
	var world_scre = load("res://scenes/world_screen.tscn").instantiate()
	get_node("/root/main").add_child(world_scre)
	current_scene = world_scre	

func change_to_research_structures_scene():
	current_scene.queue_free()
	var struct_scre = load("res://scenes/researchs/structs_screen.tscn").instantiate()
	get_node("/root/main").add_child(struct_scre)
	current_scene = struct_scre	
