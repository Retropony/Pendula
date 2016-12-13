local size = 720 / 1080
local t = Def.ActorFrame{};

	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/b-battle") )..{
		InitCommand=cmd(CenterX;y,460;zoom,size;diffusealpha,0);
		GainFocusCommand=cmd(linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(linear,0.1;diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/b-battle") )..{
		InitCommand=cmd(CenterX;y,460;zoom,size;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(diffusealpha,1;linear,0.1;diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/iconflare") )..{
		InitCommand=cmd(CenterX;y,460;zoom,4;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(diffusealpha,1;linear,0.4;diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/iconflare") )..{
		InitCommand=cmd(CenterX;y,460;zoom,4;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(diffusealpha,1;linear,0.4;diffusealpha,0);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/flare") )..{
		InitCommand=cmd(CenterX;y,425;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(addx,-80;linear,0.1;diffusealpha,1;linear,0.4;diffusealpha,0;addx,160);
		LoseFocusCommand=cmd(CenterX;diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/flare") )..{
		InitCommand=cmd(CenterX;y,470;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(sleep,0.05;addx,60;linear,0.1;diffusealpha,1;linear,0.4;diffusealpha,0;addx,-160);
		LoseFocusCommand=cmd(CenterX;diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/flare") )..{
		InitCommand=cmd(CenterX;y,495;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(sleep,0.1;addx,-120;linear,0.1;diffusealpha,1;linear,0.4;diffusealpha,0;addx,160);
		LoseFocusCommand=cmd(CenterX;diffusealpha,0);
	};
return t;