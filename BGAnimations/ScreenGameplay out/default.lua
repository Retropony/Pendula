local t = Def.ActorFrame {};

t[#t+1] = Def.Quad {
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;diffuse,color("#000000"));
		OnCommand=cmd(diffusealpha,0;sleep,2;linear,2;diffusealpha,1;sleep,1);
	};
-- t[#t+1] = LoadActor("command");

return t