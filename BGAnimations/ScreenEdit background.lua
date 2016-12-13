local size = 720 / 1080

local t = Def.ActorFrame{
	LoadActor("Transition stay");
	Def.Quad{
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("0,0,0,0");linear,0.15;diffusealpha,0.5);
	};
};
return t;