if(argument0 == 0) return "-";

minutes = argument0 div 3600;
seconds = (argument0 - minutes*3600) div 60;
milliseconds = round(argument0 mod 60);
	
if(minutes < 10) minutes = "0" + string(minutes);	
else minutes = string(minutes);
	
if(seconds < 10) seconds = "0" + string(seconds);
else seconds = string(seconds);
	
if(milliseconds < 10) milliseconds = "0" + string(milliseconds);
else milliseconds = string(milliseconds);

return minutes + ":" + seconds + ":" + milliseconds;