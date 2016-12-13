local t = Def.ActorFrame{
	LoadActor("Warning")..{
		InitCommand=cmd(Center;scaletoclipped,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1;sleep,4;linear,0.5;diffusealpha,0);
	};
};
return t;