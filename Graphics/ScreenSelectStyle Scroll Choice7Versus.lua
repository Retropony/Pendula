local long = 1 / 15
local size = 720 / 1080
local t = Def.ActorFrame{};

	t[#t+1] = LoadActor(THEME:GetPathG("","_style/block") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("_style/beat","versus7") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,332*size;y,29*size);
		LoadActor(THEME:GetPathG("_style/7key","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addx,10*size;addy,-26*size;
sleep,long;addx,8*size;addy,26*size;
sleep,long;addx,9*size;addy,-26*size;
sleep,long;addx,9*size;addy,26*size;
sleep,long;addx,8*size;addy,-26*size;
sleep,long;addx,10*size;addy,26*size;
sleep,long;addx,-10*size;addy,-26*size;
sleep,long;addx,-8*size;addy,26*size;
sleep,long;addx,-9*size;addy,-26*size;
sleep,long;addx,-9*size;addy,26*size;
sleep,long;addx,-8*size;addy,-26*size;
sleep,long;addx,-10*size;addy,26*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,242*size;y,-4*size);
		LoadActor(THEME:GetPathG("_style/turntable","highlight") )..{
			OnCommand=cmd(diffusealpha,0;zoom,0.6;sleep,1;linear,0.2;diffusealpha,1);
		};
		LoadActor(THEME:GetPathG("_style/turntable","highlight") )..{
			OnCommand=cmd(diffusealpha,0;zoom,0.5;sleep,1;linear,0.2;diffusealpha,1;smooth,1;zoom,0.75;linear,0.2;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,473*size;y,29*size);
		LoadActor(THEME:GetPathG("_style/7key","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_2));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addx,10*size;addy,-26*size;
sleep,long;addx,8*size;addy,26*size;
sleep,long;addx,9*size;addy,-26*size;
sleep,long;addx,9*size;addy,26*size;
sleep,long;addx,8*size;addy,-26*size;
sleep,long;addx,10*size;addy,26*size;
sleep,long;addx,-10*size;addy,-26*size;
sleep,long;addx,-8*size;addy,26*size;
sleep,long;addx,-9*size;addy,-26*size;
sleep,long;addx,-9*size;addy,26*size;
sleep,long;addx,-8*size;addy,-26*size;
sleep,long;addx,-10*size;addy,26*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,618*size;y,-4*size);
		LoadActor(THEME:GetPathG("_style/turntable","highlight") )..{
			OnCommand=cmd(diffusealpha,0;zoom,0.6;sleep,1;linear,0.2;diffusealpha,1);
		};
		LoadActor(THEME:GetPathG("_style/turntable","highlight") )..{
			OnCommand=cmd(diffusealpha,0;zoom,0.5;sleep,1;linear,0.2;diffusealpha,1;smooth,1;zoom,0.75;linear,0.2;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
return t;