/// @description EM_INIT AND EM_ADD_SECTION
global.num_levels = 0;
while(room_exists(global.num_levels+2)){
	global.num_levels++;	
}

em_init(
    global.num_levels + 1,
    0,
    32,
    ">",
    room_width/2,
    room_height/2,
    fa_center,
    fa_top,
    c_white,
    "Level Select",
    100,
    0,
    0,
    2,
    2,
    0
);

for(i = 0; i < global.num_levels; i++){
	em_add_section(room_get_name(i+2),0);
}
em_add_section("Back to Main Menu",0);