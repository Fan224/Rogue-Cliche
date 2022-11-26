/// @description  


	
//Si esta Cerrada...
//If there are no enemies...
cleared = true;
for (var i = 0; i < array_length(room_enemies); i++) {
    with room_enemies[i]{instance_destroy();}
	
	if (instance_exists(room_enemies[i])) {
        cleared = false;
    }
}
 
 //If there are no enemies = Open
if (cleared==true)
{
t+=1;
}


//Si esta abierta...
if act=0
if t > 70
{
//instance_create(x,y,obj_door_effect);
sprite_index=(spr_wall1);
solid=0;
t=0;
act = 1;
}



//Si esta "act"-ivado puedes usar la puerta para ir a la siguiente mazmorra
if act = 1
if place_meeting(x,y,obj_player){

//Direcciòn de la puerta
if dir = "up"    {obj_camera.y -= 480; with (obj_player){y-=110;}}
if dir = "down"  {obj_camera.y += 480; with (obj_player){y+=110;}}
if dir = "left"  {obj_camera.x -= 608; with (obj_player){x-=110;}}
if dir = "right" {obj_camera.x += 608; with (obj_player){x+=110;}}
	
}

