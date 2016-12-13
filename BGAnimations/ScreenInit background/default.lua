local size = 720 / 1080
local clr = 100/255
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center);
		Def.Quad {
			InitCommand=cmd(diffuse,color("1,1,1,1");scaletoclipped,SCREEN_WIDTH,SCREEN_HEIGHT);
			OnCommand=cmd(diffusealpha,0;linear,0.2;diffusealpha,1;sleep,9.1;linear,0.2;diffusealpha,0);
		};
		LoadActor("music.ogg") .. {
			OnCommand=cmd(play);
		};
		LoadActor("ssc") .. {
			InitCommand=cmd(zoom,size;y,-80);
			OnCommand=cmd(diffusealpha,0;sleep,0.3;linear,0.5;diffusealpha,1;sleep,3.5;linear,0.5;diffusealpha,0);
		};
		LoadActor("arrow") .. {
			InitCommand=cmd(zoom,size;x,120;y,120);
			OnCommand=cmd(diffusealpha,0;sleep,0.3;linear,0.5;diffusealpha,1;sleep,3.5;linear,0.5;diffusealpha,0);
		};
		LoadActor("engine") .. {
			InitCommand=cmd(zoom,size;y,120);
			OnCommand=cmd(diffusealpha,0;sleep,0.3;linear,0.5;diffusealpha,1;sleep,3.5;linear,0.5;diffusealpha,0);
		};
		LoadFont("_venacti_outline 26px bold diffuse") .. {
			Text="Powered by";
			InitCommand=cmd(zoom,size;x,-72;y,86;diffuse,color("128*clr,192*clr,224*clr,1"));
			OnCommand=cmd(diffusealpha,0;sleep,0.3;linear,0.5;diffusealpha,1;sleep,3.5;linear,0.5;diffusealpha,0);
		};
		LoadActor("inspiration") .. {
			InitCommand=cmd(zoom,size;);
			OnCommand=cmd(diffusealpha,0;sleep,4.8;linear,0.5;diffusealpha,1;sleep,3.5;linear,0.5;diffusealpha,0);
		};
};

return t


	



