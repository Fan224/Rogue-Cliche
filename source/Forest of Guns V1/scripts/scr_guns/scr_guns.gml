// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_guns_list(){
global.gun[0,0] = 0;

//Pistol
global.gun[0,1] = spr_gun;     //Gun sprite
global.gun[0,2] = 0.3;         //Reload Time
global.gun[0,3] = "semi-auto"; //Shooting type
global.gun[0,4] = 20;          //Bullets spawn distance
global.gun[0,5] =  7;          //level of screeenshake
global.gun[0,6] =  4;          //Base damage
//Uzi
global.gun[1,1] = spr_uzi;
global.gun[1,2] = 0.1;
global.gun[1,3] = "full-auto";
global.gun[1,4] = 20;
global.gun[1,5] =  9;          
global.gun[1,6] =  4;

//Shotgun
global.gun[2,1] = spr_shotgun;
global.gun[2,2] = 3;
global.gun[2,3] = "full-auto";
global.gun[2,4] = 20;
global.gun[2,5] =  14;          
global.gun[2,6] =  6;



}


function scr_gun_shooting(){
randomize();
dir = point_direction(x,y,mouse_x,mouse_y);

 var _xx = x + lengthdir_x(global.gun[global.gun_select,4], dir);
 var _yy = y + lengthdir_y(global.gun[global.gun_select,4], dir);


//Pistol
if global.gun_select = 0
{
 if !position_meeting(_xx,_yy,obj_wall_parent){
   with instance_create_layer(_xx, _yy, layer, obj_bullet)
   {angle = other.dir;}
 } else {
   with instance_create_layer(x, y, layer, obj_bullet)
   {angle = other.dir;}
 }
 
 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

//Uzi
if global.gun_select = 1
{
 if !position_meeting(_xx,_yy,obj_wall_parent)
 {
   with instance_create_layer(_xx, _yy, layer, obj_bullet)
   {angle = other.dir;}
 } else {
   with instance_create_layer(x, y, layer, obj_bullet)
   {angle = other.dir;}
 }

 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

//Shotgun
if global.gun_select = 2
{
if !position_meeting(_xx,_yy,obj_wall_parent){
	
repeat (5){ 
  with instance_create_layer(_xx+lengthdir_x(random(2),dir), _yy+lengthdir_y(random(2),dir), layer, obj_bullet)
  {
  sprite_index=(spr_bullet2);
  angle = other.dir +random_range(-20,20);
  speed = random_range(10,12);
  shoot_type="shotgun";
  } 
}

  repeat (2){ 
  with instance_create_layer(_xx, _yy, layer, obj_bullet)
  {
  sprite_index=(spr_bullet2);
  angle = other.dir +random_range(-5,5);
  speed = random_range(10,12);
  shoot_type="shotgun";
  } 
 }

 } else {

repeat (5){ 
  with instance_create_layer(x+lengthdir_x(random(2),dir), y+lengthdir_y(random(2),dir), layer, obj_bullet)
  {
  sprite_index=(spr_bullet2);
  angle = other.dir +random_range(-20,20);
  speed = random_range(10,12);
  shoot_type="shotgun";
  } 
}

  repeat (2){ 
  with instance_create_layer(x, y, layer, obj_bullet)
  {
  sprite_index=(spr_bullet2);
  angle = other.dir +random_range(-5,5);
  speed = random_range(10,12);
  shoot_type="shotgun";
  } 
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
	
function scr_bullet_damage(){
	
   hp -= global.gun[global.gun_select,6] + (global.add_damage - global.subs_damage);
	
}