/// @description Insert description here
// You can write your code in this editor
//if(win_countdown != 0)
draw_sprite_ext(menubox,0,x,y,1.5,0.5,0,c_white,1);
image_yscale = 0.5;
draw_set_font(font0);
if(is_win){
	if (!audio_is_playing(win) && sound){
		audio_play_sound(win,5,false);
	}
	sound = false;
	if(room_next(room))
		var rname = room_get_name(room);
		if (rname == "Level1") draw_text(x,y-30,"[Processing...Courageousness\n data recovered. Progress: 5%. ]");
		else if (rname == "Level2") draw_text(x,y-30,"[Processing...Data\n Honesty recovered. Progress: 9%]");
		else if (rname == "Level3") draw_text(x,y-30,"[Processing... Respect \nrecovered. Progress: 14%. \nData loss reason: Unknown] ");
		else if (rname == "Level4") draw_text(x,y-30,"[Mission accomplished...Data\n Responsibility recovered. \nProgress: 18%. Must continue...]");
		else if (rname == "Level5") draw_text(x,y-30,"[Mission accomplished...Data\n Humility recovered.\n Almost 1/4th of modules collected.]");
		else if (rname == "Level6") draw_text(x,y-30,"[Mission accomplished...Data\n Compassion recovered. Progress: 27%.\n Emotion module detecting concern for owner.]");
		else if (rname == "Level7") draw_text(x,y-30,"[Success!...Data\n Fairness recovered. \nProgress: 32%. Getting there.]");
		else if (rname == "Level8") draw_text(x,y-30,"[Success!...Data\n Forgiveness recovered.\n Will be used when reason for\n data loss is found. 40% through. ]");
		else if (rname == "Level9") draw_text(x,y-30,"[Success!...Data\n Authenticity recovered.\n 41% through. ]");
		else if (rname == "Level10") draw_text(x,y-30,"[Great!...Data\n Courage recovered. ALmost Half way there!]");
		else if (rname == "Level11") draw_text(x,y-30,"[Great! Generocity\n recovered..Getting closer.]");
		else if (rname == "Level12") draw_text(x,y-30,"[Great!...“Perseverance\n recovered. This data is getting harder to get,\n but with time I will be complete again.]");
		else if (rname == "Level13") draw_text(x,y-30,"[Nice!... Friendliness\n recovered. Progress: 59%.  I can do this!]");
		else if (rname == "Level14") draw_text(x,y-30,"Nice!... Peacefulness\n recovered, as all robots should be. \nProgress: 64% ]");
		else if (rname == "Level15") draw_text(x,y-30,"Nice!... Kindness\n recovered. 3/4ths there now. ");
		else if (rname == "Level16") draw_text(x,y-30,"Awesome! Acquired my\n Self-Discipline module. I’m\n feeling almost human!");
		else if (rname == "Level17") draw_text(x,y-30,"Awesome!...Got Optimism.\n I can’t wait to see how\n everyone else is doing!");
		else if (rname == "Level18") draw_text(x,y-30,"Alright!...Got Energetic.\n I'm excited to get back!");
		else if (rname == "Level19") draw_text(x,y-30,"Alright!...Got Gentleness.\n Soon...soon...\nLet's keep going!");
		else if (rname == "Level20") draw_text(x,y-30,"Success!...Got Reliability\n back. I can’t wait to be back\n to myself! Two more to go! ");
		else if (rname == "Level21") draw_text(x,y-30,"So close! Got Consideration.\n Oh it feels so nice to feel again,\n but just one thing feels missing.");
		else if (rname == "Level22") draw_text(x,y-30,"Success! Initiating next level...");
	else
		draw_text(x,y-30,"Woohoo! I’ve finally found it!\n The last one! “Love”.\n I can’t wait to wake up and get back \nto my old life with my owner and friends.\n Rebooting! ");
	draw_text(x,y-90,round(countdown));
	//draw_text(x,y+90,"Press any key to continue...");
}
if(is_lose){
	if (!audio_is_playing(die) && sound){
		audio_play_sound(die,5,false);
	}
	sound = false;
	draw_text(x,y-30,"Fatal Error! Rebooting program...");
	draw_text(x,y,round(countdown));	
}