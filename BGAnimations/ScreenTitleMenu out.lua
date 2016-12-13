local size = 720 / 1080

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(visible,false),
		OnCommand=cmd(sleep,3)
	};
	LoadActor("Transition out")..{
		InitCommand=cmd();
	};
};
return t;