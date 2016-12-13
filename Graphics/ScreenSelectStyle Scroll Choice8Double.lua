local long = 1 / 18
local size = 720 / 1080
local t = Def.ActorFrame{};

	t[#t+1] = LoadActor(THEME:GetPathG("","_style/block") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = LoadActor(THEME:GetPathG("_style/techno","double8") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,244*size;y,62*size);
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addy,-72*size;
sleep,long;addy,-72*size;
sleep,long;addx,72*size;addy,144*size;
sleep,long;addy,-144*size;
sleep,long;addx,72*size;
sleep,long;addy,72*size;
sleep,long;addy,72*size;
sleep,long;diffusealpha,0;
sleep,15*long;diffusealpha,1;
sleep,long;addy,-72*size;
sleep,long;addy,-72*size;
sleep,long;addx,-72*size;
sleep,long;addy,144*size;
sleep,long;addx,-72*size;addy,-144*size;
sleep,long;addy,72*size;
sleep,long;addy,72*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1);addx,230*size);
			OnCommand=cmd(diffusealpha,0;sleep,1;
sleep,8*long;diffusealpha,1;
sleep,long;addy,-72*size;
sleep,long;addy,-72*size;
sleep,long;addx,72*size;addy,144*size;
sleep,long;addy,-144*size;
sleep,long;addx,72*size;
sleep,long;addy,72*size;
sleep,long;addy,72*size;
sleep,long;addy,-72*size;
sleep,long;addy,-72*size;
sleep,long;addx,-72*size;
sleep,long;addy,144*size;
sleep,long;addx,-72*size;addy,-144*size;
sleep,long;addy,72*size;
sleep,long;addy,72*size;
sleep,long;diffusealpha,0;
sleep,8*long;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
return t;