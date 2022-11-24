/// @description Variables para hacer los cuartos
instance_create_layer(x,y,"Entidades",obj_room); //First room

rooms_generated = 0;
genx = x;
geny = y;
gen = true;

up    = false;
down  = false;
left  = false;
right = false;

t=0;
tt=1;
limit=5;

