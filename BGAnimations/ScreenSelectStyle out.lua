local size = 720 / 1080

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(visible,false),
		OnCommand=cmd(sleep,6)
	};
	LoadActor("Transition longout")..{
		OnCommand=cmd();
	};
};
return t;