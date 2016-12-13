local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor("big")..{
		InitCommand=cmd(x,-780*size;y,-220*size);
		OnCommand=cmd(spin;effectmagnitude,0,0,12);
	};
	LoadActor("big")..{
		InitCommand=cmd(x,780*size;y,-220*size);
		OnCommand=cmd(spin;effectmagnitude,0,0,12);
	};
	LoadActor("small")..{
		InitCommand=cmd(x,-590*size;y,0);
		OnCommand=cmd(spin;effectmagnitude,0,0,-12);
	};
	LoadActor("small")..{
		InitCommand=cmd(x,590*size;y,0);
		OnCommand=cmd(spin;effectmagnitude,0,0,-12);
	};
	LoadActor("header");
};
return t;