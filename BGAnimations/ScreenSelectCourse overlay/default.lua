local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor(THEME:GetPathB("gamemenu","overlay"));
	LoadActor("title")..{
		InitCommand=cmd(x,280;y,60;zoom,0.6);
		OnCommand=cmd(addx,-32;diffusealpha,0;sleep,0.4;decelerate,0.4;diffusealpha,1;addx,32);
	};
};
return t;