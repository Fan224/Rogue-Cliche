/// @description variables
levelup=false;

//Player Variables
global.hp      = 35;
global.maxhp   = 35;
global.key     = 0;
global.money   = 0;

//Other Variables
global.xp = 0;
global.max_xp = 50;
global.door_act=0;

//Gun Variables
global.damage  = 1;
global.reload  = 8;
global.ter_int = 7; //Terremoto Intensidad
global.gun[0,0] = 0;

//Pistol
global.gun[0,1] = spr_gun;    //Gun sprite
global.gun[0,2] = 0.3;          //Reload Time
global.gun[0,3] = "semi-auto";//Shooting type
global.gun[0,4] = 20;         //Bullets spawn distance

//Uzi
global.gun[1,1] = spr_uzi;
global.gun[1,2] = 0.1;
global.gun[1,3] = "full-auto";
global.gun[1,4] = 35;

//Shotgun
global.gun[2,1] = spr_shotgun;
global.gun[2,2] = 3;
global.gun[2,3] = "semi-auto";
global.gun[2,4] = 20;

global.gun_select = 0;

//Speed Variables
global.move     = true;
global.spd      = 0;
global.base_spd = 2;
global.additional_spd = 0;
global.decreasing_spd = 0;


