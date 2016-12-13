local size = 0.6
local t = Def.ActorFrame{
	LoadActor("endless")..{
		InitCommand=cmd(Center;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;zoom,0.5;sleep,2;linear,0.3;diffusealpha,0.75)
	};
	LoadActor("InfinitusLogo")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-48);
		OnCommand=cmd(diffusealpha,0;zoom,size;sleep,2;linear,0.3;diffusealpha,1);
	};
	LoadActor("InfinitusLogo")..{
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y-48;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;sleep,4;queuecommand,"Loop");
		LoopCommand=cmd(zoom,size;diffusealpha,1;linear,1;zoomx,size*2;zoomy,size*3;diffusealpha,0;sleep,2;queuecommand,"Loop")
	};
	LoadActor(THEME:GetPathS("_Menu","netmusic"))..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
};
return t;