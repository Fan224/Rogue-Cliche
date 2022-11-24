/// @description  



//var enemy = tag_get_asset_ids("Enemy",asset_object);


//If there are no enemies...
var cleared = true;
//for (var i = 0; i < array_length(enemy); i++) {
//    if (instance_exists((enemy[i])) ) {
//        cleared = false;
//        break;
//    }
//}
 
// if (cleared==true)
 //{
 //t+=0;
 //}



if act=0
if t > 11
{
//instance_create(x,y,obj_door_effect);
//sprite_index=(sprite9);
act = 1;
solid=0;
t=0;
}

//Si esta "act"-ivado puedes usar la puerta para ir a la siguiente mazmorra
if act = 1
if place_meeting(x,y,obj_player){

//Direcciòn de la puerta
if dir = up    {obj_camera.y -= 480; with (obj_player){y-=120;}}
if dir = down  {obj_camera.y += 480; with (obj_player){y+=120;}}
if dir = left  {obj_camera.x -= 607; with (obj_player){x-=120;}}
if dir = right {obj_camera.x += 607; with (obj_player){x+=120;}}


	
}




