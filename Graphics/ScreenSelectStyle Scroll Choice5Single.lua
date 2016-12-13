local long = 1 / 12
local size = 720 / 1080
local t = Def.ActorFrame{};

	t[#t+1] = LoadActor(THEME:GetPathG("","_style/block") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
if GAMESTATE:GetCurrentGame():GetName() == 'beat' then
	t[#t+1] = LoadActor(THEME:GetPathG("_style/beat","single5") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,193*size;y,27*size);
		LoadActor(THEME:GetPathG("_style/5key","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addx,18*size;addy,-44*size;
sleep,long;addx,18*size;addy,44*size;
sleep,long;addx,18*size;addy,-44*size;
sleep,long;addx,18*size;addy,44*size;
sleep,long;addx,-18*size;addy,-44*size;
sleep,long;addx,-18*size;addy,44*size;
sleep,long;addx,-18*size;addy,-44*size;
sleep,long;addx,-18*size;addy,44*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,350*size;y,4*size);
		LoadActor(THEME:GetPathG("_style/turntable","highlight") )..{
			OnCommand=cmd(diffusealpha,0;zoom,0.6;sleep,1;linear,0.2;diffusealpha,1);
		};
		LoadActor(THEME:GetPathG("_style/turntable","highlight") )..{
			OnCommand=cmd(diffusealpha,0;zoom,0.5;sleep,1;linear,0.2;diffusealpha,1;smooth,1;zoom,0.75;linear,0.2;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
elseif GAMESTATE:GetCurrentGame():GetName() == 'techno' then
	t[#t+1] = LoadActor(THEME:GetPathG("_style/techno","single5") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,244*size;y,62*size);
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addy,-144*size;
sleep,long;addx,72*size;addy,72*size;
sleep,long;addx,72*size;addy,-72*size;
sleep,long;addy,144*size;
sleep,long;addy,-144*size;
sleep,long;addx,-72*size;addy,72*size;
sleep,long;addx,-72*size;addy,-72*size;
sleep,long;addy,144*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
end;
return t;