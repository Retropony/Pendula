local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor("container")..{
		InitCommand=cmd(Center;zoom,size);
	};
	LoadActor("1screen")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-(550*size);y,SCREEN_CENTER_Y+(58*size);zoom,size;vertalign,top;texcoordvelocity,0,0.4);
	};
	LoadActor("2screen")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+(89*size);y,0;zoom,size;vertalign,top;texcoordvelocity,0,0.1);
	};
};
return t;