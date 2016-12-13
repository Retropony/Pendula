local t = Def.ActorFrame{
	LoadActor("rotaled")..{
		InitCommand=cmd(zoom,0.15);
	};
};
return t;