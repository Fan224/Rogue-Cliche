/// @description 

if shoot_type=1{instance_destroy();}

//Borra la lista
if shoot_type=3
{ds_list_destroy(hit_list);instance_destroy();}

