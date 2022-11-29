function scr_savegame() {
/// @description Guarda el progreso temporalmente


//Save Progress


if act=0
{
	
//Create a Root list
var _root_list = ds_list_create();

//For every instance listed, create a map.
with (obj_enemy_parent) 
{
  var _map = ds_map_create();
  ds_list_add(_root_list,_map);
  ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
  
  var _obj = object_get_name(object_index);
  var _id  = object_index;
  
  ds_map_add(_map, "obj", _obj);
  ds_map_add(_map, "y", y);
  ds_map_add(_map, "x", x);
  ds_map_add(_map, "_layer", layer);
  
  if variable_instance_exists( _id, "hspd") 
  { ds_map_add(_map, "_hspd", hspd)};
  if variable_instance_exists( _id, "vspd") 
  { ds_map_add(_map, "_vspd", vspd)};
  if variable_instance_exists( _id, "hp") 
  { ds_map_add(_map, "health", hp)};
  
ds_map_add(_map, "player_hp", global.hp);
ds_map_add(_map, "scores", global.scores);
}


//Wrap the root LIST up in a map!
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper, "root", _root_list);

//Save ALL of this into a string
var _string = json_encode(_wrapper);
SaveStringToFile("savedgame."+string(act)+"save", _string);

//Get rid of Data!
ds_map_destroy(_wrapper);

act=1;
}
}
