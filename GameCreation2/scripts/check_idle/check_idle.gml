if(argument0 == playerobject_virtue){
	with(playerobject_virtue){
		if(place_meeting(x,y,playerobject_sin))
			return true;
		if(place_meeting(x,y,breakablewall_virtueobj))
			return true;
		if(place_meeting(x,y,breakablewall_sinobj))
			return true;
		if(place_meeting(x,y,wallobject))
			return true;
		
		next_x = x+movement_direction_x;
		next_y = y+movement_direction_y;
		if(place_meeting(next_x,next_y,playerobject_sin))
			return true;
		if(place_meeting(next_x,next_y,breakablewall_virtueobj))
			return true;
		if(place_meeting(next_x,next_y,breakablewall_sinobj))
			return true;
		if(place_meeting(next_x,next_y,wallobject))
			return true;
		
		return false;	
	}
}
if(argument0 == playerobject_sin){
	with(playerobject_sin){
		if(place_meeting(x,y,playerobject_virtue))
			return true;
		if(place_meeting(x,y,breakablewall_virtueobj))
			return true;
		if(place_meeting(x,y,breakablewall_sinobj))
			return true;
		if(place_meeting(x,y,wallobject))
			return true;
		
		next_x = x+movement_direction_x;
		next_y = y+movement_direction_y;
		if(place_meeting(next_x,next_y,playerobject_virtue))
			return true;
		if(place_meeting(next_x,next_y,breakablewall_virtueobj))
			return true;
		if(place_meeting(next_x,next_y,breakablewall_sinobj))
			return true;
		if(place_meeting(next_x,next_y,wallobject))
			return true;
		
		return false;
	}
}
return false;
