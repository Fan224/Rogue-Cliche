// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_guns_list(){

}


function scr_gun_shooting(){
randomize();
dir = point_direction(x,y,mouse_x,mouse_y);

 var _xx = x + lengthdir_x(global.gun[global.gun_select,4], dir);
 var _yy = y + lengthdir_y(global.gun[global.gun_select,4], dir);


//Pistol
if global.gun_select = 0
{
 with instance_create_layer(_xx, _yy, layer, obj_bullet)
 {angle = other.dir;}
 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

//Uzi
if global.gun_select = 1
{
 with instance_create_layer(_xx, _yy, layer, obj_bullet)
 {angle = other.dir;}
 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

//Shotgun
if global.gun_select = 2
{
 repeat (4){ 
  with instance_create_layer(_xx+lengthdir_x(random(2),dir), _yy+lengthdir_y(random(2),dir), layer, obj_bullet)
  {
  sprite_index=(spr_bullet2);
  angle = other.dir +random_range(-20,20);
  speed = random_range(10,13);
  shoot_type="shotgun"
  } 
  }
  
  repeat (2){ 
  with instance_create_layer(_xx, _yy, layer, obj_bullet)
  {
  sprite_index=(spr_bullet2);
  angle = other.dir +random_range(-5,5);
  speed = random_range(10,13);
  shoot_type="shotgun"
  } 
 }
 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

//Bouncer
if global.gun_select = 3
{
 repeat (7){ 
  with instance_create_layer(_xx+lengthdir_x(random(2),dir), _yy+lengthdir_y(random(2),dir), layer, obj_bullet)
  {
  angle = other.dir +random_range(-100,100);
  speed = 5;
  } 
 }
 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

}