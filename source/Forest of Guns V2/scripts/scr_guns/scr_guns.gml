// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gun_pickup(){
	
 if keyboard_check_released(ord("E")){

 if global.gun_max_capacity >= 2
 if global.guns_storage[2] = 0
 {
 obj_control.alpha_act=1;
 obj_control.draw_alp=1;
 obj_control.at=0;
  global.guns_storage[2]=gun_choose;	
  global.gun_row=2;
 }
 else
 if global.gun_max_capacity >= 3
 if global.guns_storage[3] = 0
 {
  obj_control.alpha_act=1;
  obj_control.draw_alp=1;
  obj_control.at=0;
  global.guns_storage[3]=gun_choose;	
  global.gun_row=3;
 }
  else
 if global.gun_max_capacity >= 4
 if global.guns_storage[4] = 0
 {
  obj_control.alpha_act=1;
  obj_control.draw_alp=1;
  obj_control.at=0;
  global.guns_storage[4]=gun_choose;	
  global.gun_row=4;
 }
 else
 { 
  obj_control.alpha_act=1;
  obj_control.draw_alp=1;
  obj_control.at=0;
  global.guns_storage[global.gun_row]=gun_choose;	
 }

 instance_destroy();
 }
 
}


function scr_guns_list(){
	
global.gun[0,0] = 0;

global.gun[0,1] = spr_none;     //Gun sprite
global.gun[0,2] =  1;          //Reload Time
global.gun[0,3] =  1;          //Shooting type
global.gun[0,4] =  1;          //Bullets spawn distance
global.gun[0,5] =  1;          //level of screeenshake
global.gun[0,6] =  1; 
global.gun[0,7] =  ""; 

//Pistol
global.gun[1,1] = spr_pistol;   //Gun sprite
global.gun[1,2] = 0.15;          //Reload Time
global.gun[1,3] = "semi-auto";  //Shooting type
global.gun[1,4] = 15;           //Bullets spawn distance
global.gun[1,5] =  9;           //level of screeenshake
global.gun[1,6] =  3;           //Base damage
global.gun[1,7] =  "Pistol";    //Gun's Name

//Uzi
global.gun[2,1] = spr_uzi;
global.gun[2,2] = 0.1;
global.gun[2,3] = "full-auto";
global.gun[2,4] = 20;
global.gun[2,5] =  9;          
global.gun[2,6] =  4;
global.gun[2,7] =  "Uzi"; 

//Shotgun
global.gun[3,1] = spr_shotgun;
global.gun[3,2] = 3;
global.gun[3,3] = "full-auto";
global.gun[3,4] = 20;
global.gun[3,5] =  14;          
global.gun[3,6] =  6;
global.gun[3,7] =  "Shotgun"; 
}


function scr_gun_shooting(){
randomize();
dir = point_direction(x,y,mouse_x,mouse_y);

 var _xx = x + lengthdir_x(global.gun[global.gun_select,4], dir);
 var _yy = y + lengthdir_y(global.gun[global.gun_select,4], dir);


//Pistol
if global.gun_select = 1
{

 if !position_meeting(_xx,_yy,obj_wall_parent){
   with instance_create_layer(_xx, _yy, layer, obj_bullet)
   {angle = other.dir +random_range(-7,7);
    speed = 10;}
 } else {
   with instance_create_layer(x, y, layer, obj_bullet)
   {angle = other.dir +random_range(-7,7);
    speed = 10;}
 }
 
 instance_create_layer(_xx, _yy, layer, obj_shooteffect); //Shoot particle
}

//Uzi
if global.gun_select = 2
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
if global.gun_select = 3
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
if global.gun_select = 4
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