local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor("container")..{
		InitCommand=cmd(CenterX;y,112;vertalign,top);
		OnCommand=cmd(zoom,0;sleep,0.4;decelerate,0.1;zoomx,size;decelerate,0.3;zoomy,size);
		OffCommand=cmd(accelerate,0.3;zoomx,0);
	};
	LoadActor("screen")..{
		InitCommand=cmd(CenterX;y,112+(8*size);vertalign,top;texcoordvelocity,0,0.1);
		OnCommand=cmd(zoom,0;sleep,0.4;decelerate,0.1;zoomx,size;decelerate,0.3;zoomy,size);
		OffCommand=cmd(accelerate,0.3;zoomx,0);
	};
};
return t;