return Def.ActorFrame{
	LoadActor("C-flat")..{
		InitCommand=cmd(x,-672;zoomx,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;zoomy,8;accelerate,0.3;zoomy,0.8;linear,0.3;diffusealpha,0);
	};
	LoadActor("C-glow")..{
		InitCommand=cmd(x,-672;zoom,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;croptop,1;sleep,0.3;linear,0.3;croptop,0;diffusealpha,0.25;linear,0.1;diffusealpha,0);
	};
	LoadActor("L-flat")..{
		InitCommand=cmd(x,-336;zoomx,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;zoomy,12;accelerate,0.34;zoomy,0.8;linear,0.3;diffusealpha,0);
	};
	LoadActor("L-glow")..{
		InitCommand=cmd(x,-336;zoom,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;croptop,1;sleep,0.34;linear,0.3;croptop,0;diffusealpha,0.25;linear,0.1;diffusealpha,0);
	};
	LoadActor("E-flat")..{
		InitCommand=cmd(x,0;zoomx,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;zoomy,16;accelerate,0.38;zoomy,0.8;linear,0.3;diffusealpha,0);
	};
	LoadActor("E-glow")..{
		InitCommand=cmd(x,0;zoom,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;croptop,1;sleep,0.38;linear,0.3;croptop,0;diffusealpha,0.25;linear,0.1;diffusealpha,0);
	};
	LoadActor("A-flat")..{
		InitCommand=cmd(x,336;zoomx,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;zoomy,20;accelerate,0.42;zoomy,0.8;linear,0.3;diffusealpha,0);
	};
	LoadActor("A-glow")..{
		InitCommand=cmd(x,336;zoom,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;croptop,1;sleep,0.42;linear,0.3;croptop,0;diffusealpha,0.25;linear,0.1;diffusealpha,0);
	};
	LoadActor("R-flat")..{
		InitCommand=cmd(x,672;zoomx,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;zoomy,24;accelerate,0.46;zoomy,0.8;linear,0.3;diffusealpha,0);
	};
	LoadActor("R-glow")..{
		InitCommand=cmd(x,672;zoom,0.8;diffusealpha,1);
		OnCommand=cmd(sleep,0.4;croptop,1;sleep,0.46;linear,0.3;croptop,0;diffusealpha,0.25;linear,0.1;diffusealpha,0);
	};
	Def.Quad {
		InitCommand=cmd(x,0;y,0;zoomto,1920,1080);
		OnCommand=cmd(diffuse,color("#000000ff");sleep,0.4;diffuse,color("#df9b3aff");linear,0.46;diffusealpha,0);
	};
	
};