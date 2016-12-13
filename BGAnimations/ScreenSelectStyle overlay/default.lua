local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor("selector")..{
		InitCommand=cmd(Center;zoom,size);
		OnCommand=cmd(diffusealpha,0;sleep,0.25;linear,0.25;diffusealpha,1);
		OffCommand=cmd(linear,0.5;diffusealpha,0)
	};
};
return t;