/// @description  


//Sprite asignado
sprite_index = spr;


//tiempo
t += 0.50;

//Limite de levitacion
item_vspd = clamp(item_vspd, -5, 5);


//Hacia Abajo
if t <= 10 {
item_vspd += 0.10;}

//Al acercarse al final del movimiento baja un poco la velocidad
if t <= 15 {
item_vspd += 0.10;}


//Hacia Arriba
if t > 15 {
	
	
 if t <= 25 {
 item_vspd -= 0.10;}

 if t <= 30
 {
 item_vspd -= 0.10;}
 
}

//Finaliza la levitaciòn
if t > 30
{
t = 0;
}








