/// @description  Variables
//view_width  =  1920/5;
//view_height =  1080/5;
//window_scale = 4;
window_set_fullscreen(1);

#macro cam view_camera[0]
#macro view_w camera_get_view_width(view_camera[0])
#macro view_h camera_get_view_height(view_camera[0])

//Set's aspect radio
aspect_ratio = display_get_width()/display_get_height();

view_height = 650; //250
view_width  = round(view_height*aspect_ratio);
 
if(view_width & 1) view_width++;
if(view_height & 1) view_height++;

max_window_scale = min(floor(display_get_width()/view_width),floor(display_get_height()/view_height));
if (view_height * max_window_scale == display_get_height())
    max_window_scale--;
    
window_scale = max_window_scale;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

ter = 0;
ter_t = 0;
ter_y = 0;
ter_x = 0;
ter_intensity=1;


