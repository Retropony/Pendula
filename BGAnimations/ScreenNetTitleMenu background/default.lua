local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor("opening")..{
		InitCommand=cmd(Center);
		OnCommand=cmd(diffusealpha,1;sleep,2;diffusealpha,0;)
	};
	Def.Quad {
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT;diffuse,color("1,1,1,1"));
		OnCommand=cmd(diffusealpha,0;sleep,2;diffusealpha,1;linear,0.5;diffusealpha,0);
	};
	LoadActor("TitleBG")..{
		InitCommand=cmd(Center;zoom,1.5);
		OnCommand=cmd(diffusealpha,0;sleep,3;diffusealpha,1;texcoordvelocity,-0.02,0);
	};
};
return t;