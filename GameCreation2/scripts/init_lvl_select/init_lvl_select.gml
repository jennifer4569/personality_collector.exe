num_elements = global.start_lvl+global.lvls_inpage;
if(num_elements > global.num_levels){
	num_elements = global.num_levels;
}
else
	num_elements++;

if(global.start_lvl != 0)
	num_elements++;
	
num_elements++;

em_init(
	num_elements,
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

for(i = global.start_lvl; i < global.start_lvl+global.lvls_inpage; i++){
	em_add_section(room_get_name(i+2),0);
}

if(global.start_lvl != 0)
	em_add_section("Previous Page", 0);
	
if(global.start_lvl+global.lvls_inpage < global.num_levels)
	em_add_section("Next Page", 0);

em_add_section("Back to Main Menu",0);