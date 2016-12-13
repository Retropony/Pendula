local size = 720 / 1080
local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,176;CenterX;y,SCREEN_TOP+88;diffuse,color("#888888");diffusealpha,0.8;fadebottom,0.75);
	};
	Def.Quad{
		InitCommand=cmd(zoomto,SCREEN_WIDTH,176;CenterX;y,SCREEN_BOTTOM-88;diffuse,color("#888888");diffusealpha,0.8;fadetop,0.75);
	};
	Def.ActorFrame{
		InitCommand=cmd(diffusealpha,0.25);
		LoadActor("blink")..{
			InitCommand=cmd(CenterX;y,SCREEN_TOP+84;zoom,size;texcoordvelocity,0,-0.1;fadebottom,0.25);
		};
		LoadActor("blink")..{
			InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-84;zoom,size;texcoordvelocity,0,0.1;fadetop,0.25);
		};
	};
};
return t;