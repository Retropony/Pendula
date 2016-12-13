local size = 720 / 1080

local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("0,0,0,0");sleep,2/3;linear,1/6;diffusealpha,1);
	};
	LoadActor("fail") .. {
        	OnCommand=cmd(queuecommand,("Play"));
		PlayCommand=cmd(play);
	};
	LoadActor("updoor") .. {
		InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
        	OnCommand=cmd(decelerate,2/3;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
	};
	LoadActor("downdoor") .. {
		InitCommand=cmd(Center;zoom,size;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
        	OnCommand=cmd(decelerate,2/3;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
	};
	Def.ActorFrame{
		InitCommand=cmd(Center);
		OnCommand=cmd(addx,-360;decelerate,1;addx,360);
		LoadActor("text") .. {
        		OnCommand=cmd(zoom,size;diffusealpha,0;sleep,2/3;linear,1/3;diffusealpha,1);
		};
		LoadActor("glow") .. {
        		OnCommand=cmd(zoom,size;diffusealpha,0.1;cropright,1;sleep,1;linear,1/2;cropright,0;linear,1/6;diffusealpha,0);
		};
		LoadActor("text") .. {
			InitCommand=cmd(blend,'BlendMode_Add');
        		OnCommand=cmd(zoomy,0.5*size;zoomx,size;diffusealpha,0;sleep,1;linear,1/4;zoomy,0.675*size;diffusealpha,0.3;linear,1/4;zoomy,0.75*size;diffusealpha,0);
		};
	};
	Def.Quad{
		InitCommand=cmd(Center;zoomto,SCREEN_WIDTH+1,SCREEN_HEIGHT);
		OnCommand=cmd(diffuse,color("0,0,0,0");sleep,2.2;linear,1;diffusealpha,1;sleep,1);
	};
};
return t;