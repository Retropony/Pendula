local t = Def.ActorFrame{};

	t[#t+1] = LoadActor("clock-selector")..{
		InitCommand=cmd(zoom,0;diffusealpha,0;blend,'BlendMode_Add');
		GainFocusCommand=cmd(spin;effectmagnitude,0,0,12;linear,0.1;zoom,0.75;diffusealpha,1);
		LoseFocusCommand=cmd(stopeffect;linear,0.1;zoom,0;diffusealpha,0;sleep,1/60;rotationz,0);
	};
	t[#t+1] = LoadActor("_clock-selection")..{
		InitCommand=cmd(zoom,0.75;diffusealpha,0;diffuse,color("#ffffff"));
		GainFocusCommand=cmd(linear,0.1;diffuse,color("#9100f7"));
		LoseFocusCommand=cmd(linear,0.1;diffuse,color("#ffffff"));
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_pointer/ob-standard") )..{
		InitCommand=cmd(zoom,0.75;diffusealpha,1);
		GainFocusCommand=cmd(linear,0.1;diffusealpha,0);
		LoseFocusCommand=cmd(linear,0.1;diffusealpha,1);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_pointer/om-standard") )..{
		InitCommand=cmd(zoom,0.75;diffusealpha,1;rotationz,210);
		GainFocusCommand=cmd(linear,0.1;diffusealpha,0);
		LoseFocusCommand=cmd(linear,0.1;diffusealpha,1);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_pointer/i-common") )..{
		InitCommand=cmd(zoom,0.75;diffusealpha,0;diffuse,color("#9100f7"));
		GainFocusCommand=cmd(spin;effectmagnitude,0,0,48;linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(stopeffect;linear,0.1;diffusealpha,0;sleep,1/60;rotationz,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_pointer/ib-standard") )..{
		InitCommand=cmd(zoom,0.75;diffusealpha,0;diffuse,color("#9100f7"));
		GainFocusCommand=cmd(spin;effectmagnitude,0,0,12;linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(stopeffect;linear,0.1;diffusealpha,0;sleep,1/60;rotationz,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_pointer/im-standard") )..{
		InitCommand=cmd(zoom,0.75;diffusealpha,0;diffuse,color("#9100f7");rotationz,210);
		GainFocusCommand=cmd(linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(linear,0.1;diffusealpha,0);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/o-expert") )..{
		InitCommand=cmd(zoom,0.75);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("","_mode/i-expert") )..{
		InitCommand=cmd(zoom,0.75;diffusealpha,0);
		GainFocusCommand=cmd(linear,0.1;diffusealpha,1);
		LoseFocusCommand=cmd(linear,0.1;diffusealpha,0);
	};
return t;