/// @description variables
levelup=false;

arrow=1;

//Player Variables
global.hp      = 35;
global.maxhp   = 35;
global.key     = 0;
global.money   = 0;

//Other Variables
global.level = 0;
global.xp = 0;
global.max_xp = 100;
global.door_act=0;

//Gun Variables
global.add_damage   = 0; //+
global.subs_damage  = 0; //-
global.reload  = 8;
global.ter_int = 7; //Terremoto Intensidad
global.gun[0,0] = 0;
global.guns_storage[0] = 0;//Vacìo
global.guns_storage[1] = 1;
global.guns_storage[2] = 0;

global.gun_row = 0; 
global.gun_max_capacity = 2;

scr_guns_list();

global.gun_select = 0;

//Speed Variables
global.move     = true;
global.spd      = 0;
global.base_spd = 2;
global.additional_spd = 0;
global.decreasing_spd = 0;

//Spell variables
scr_spells_list();

global.spell_slot[0] = 0;
global.spell_row = 1;

draw_alp=0;
alpha_act=0;
at=0;

book=0;