local long = 1 / 12
local size = 720 / 1080
local t = Def.ActorFrame{};

	t[#t+1] = LoadActor(THEME:GetPathG("","_style/block") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("_style/pump","halfdouble") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,388*size;y,-70*size);
		LoadActor(THEME:GetPathG("_style/stomp","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;
sleep,2*long;diffusealpha,1;
sleep,long;addy,122*size;
sleep,long;addx,86*size;
sleep,long;addy,-122*size;
sleep,long;diffusealpha,0;
sleep,long;diffusealpha,1;
sleep,long;addy,122*size;
sleep,long;addx,-86*size;
sleep,long;addy,-122*size;
sleep,long;diffusealpha,0;sleep,long;queuecommand,"On");
		};
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1);addx,-72*size;addy,61*size);
			OnCommand=cmd(diffusealpha,0;sleep,1;
sleep,long;diffusealpha,1;
sleep,long;diffusealpha,0;
sleep,4*long;diffusealpha,1;addx,230*size;
sleep,long;diffusealpha,0;
sleep,4*long;diffusealpha,1;addx,-230*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};

return t;