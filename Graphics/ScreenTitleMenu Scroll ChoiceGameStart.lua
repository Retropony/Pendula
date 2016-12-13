local t = Def.ActorFrame{};

	t[#t+1] = LoadActor("clock-selector")..{
		InitCommand=cmd(zoom,0;diffusealpha,0;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;sleep,226/60;linear,0.2;diffusealpha,1);
		GainFocusCommand=cmd(spin;effectmagnitude,0,0,5;linear,0.1;zoom,0.5;diffusealpha,1);
		LoseFocusCommand=cmd(stopeffect;linear,0.1;zoom,0;diffusealpha,0;sleep,1/60;rotationz,0);
	};
	t[#t+1] = LoadActor("_clock-selection")..{
		InitCommand=cmd(zoom,0.5;diffusealpha,0;diffuse,color("#ffffff"));
		OnCommand=cmd(diffusealpha,0;sleep,166/60;linear,1;diffusealpha,1);
		GainFocusCommand=cmd(linear,0.1;diffuse,color("#00b9f7"));
		LoseFocusCommand=cmd(linear,0.1;diffuse,color("#ffffff"));
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_title/o-start") )..{
		InitCommand=cmd(zoom,0.5);
		OnCommand=cmd(diffusealpha,0;sleep,166/60;linear,1;diffusealpha,1);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_title/i-start") )..{
		InitCommand=cmd(zoom,0.5;diffusealpha,0);
		OnCommand=cmd(diffusealpha,0;sleep,226/60;linear,0.2;diffusealpha,1);
		GainFocusCommand=cmd(linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(linear,0.1;diffusealpha,0);
	};
return t;