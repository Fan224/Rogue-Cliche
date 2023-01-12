/// @description Setea los efectos de la bala, los cuales cambian dependiendo del arma 
if shoot_type = 3 && hit_list = undefined {hit_list = ds_list_create();}

direction = angle;
image_angle = angle;



if shoot_type = "shotgun"
{
	
speed = clamp(speed,0,50);	
  if speed >= 1
  {
	//if check=true {alarm[0]=3; check=false;}  
	  
  spd_decay +=1;
  
  if spd_decay >= 2 
  if speed >= 1
  {speed-=1; spd_decay=0;}
  
 if spd_decay >= 1 
  if speed <= 1
  {speed-=0.1; spd_decay=0;}
  
  }
  else
  {if check=true {alarm[0]=8; check=false;} }
}

 if shoot_type = "antigravity"
{
  if not speed <= -5
  {
  spd_decay +=1;
  if spd_decay >= 3 {speed-=1; spd_decay=0;}  
  }
}


//Piercing Bullets
if shoot_type = 3
if hit_list != is_undefined
if place_meeting(x,y,obj_enemy_parent)
{

//Colisiòn penetrante / Busca si esta colisionando con un enemigo, y checkea si ya lo toco.
for (var i = 0; i < array_length(enemy); i++) {
if place_meeting(x,y, (enemy[i])) {

   with (enemy[i]) ////Corre el codigo desde el enemigo
   {

   ////(if Bullet has never hit the attacker)
   if (ds_list_find_index(other.hit_list,id) = -1 ) 
   {
   //instance_create(x,y,obj_effect_b);
   // audio_play_sound(s3,65,false);
    hp -= global.damage;
	
   //(Bullet hits) Adds the attacker to the list of enemies the bullet hit.
   ds_list_add(other.hit_list,id); ////add
   }
 
  }

}

}
	
}



if place_meeting(x,y,obj_wall_parent)
{

instance_create_layer(x,y,depth,obj_particle)

}




