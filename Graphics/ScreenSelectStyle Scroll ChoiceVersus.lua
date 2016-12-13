local long = 1 / 12
local size = 720 / 1080
local t = Def.ActorFrame{};

	t[#t+1] = LoadActor(THEME:GetPathG("","_style/block") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};

if GAMESTATE:GetCurrentGame():GetName() == 'dance' then
	t[#t+1] = LoadActor(THEME:GetPathG("_style/dance","versus") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,244*size;y,-10*size);
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addx,72*size;addy,72*size;
sleep,long;addy,-144*size;
sleep,long;addx,72*size;addy,72*size;
sleep,long;addx,-72*size;addy,-72*size;
sleep,long;addy,144*size;
sleep,long;addx,-72*size;addy,-72*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_2);addx,230*size);
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addx,72*size;addy,72*size;
sleep,long;addy,-144*size;
sleep,long;addx,72*size;addy,72*size;
sleep,long;addx,-72*size;addy,-72*size;
sleep,long;addy,144*size;
sleep,long;addx,-72*size;addy,-72*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};

elseif GAMESTATE:GetCurrentGame():GetName() == 'pump' then
	t[#t+1] = LoadActor(THEME:GetPathG("_style/pump","versus") )..{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.25;addx,SCREEN_WIDTH);
	};
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,244*size;y,52*size);
		LoadActor(THEME:GetPathG("_style/stomp","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1));
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addy,-122*size;
sleep,long;diffusealpha,0;
sleep,long;diffusealpha,1;addx,144*size;
sleep,long;addy,122*size;
sleep,long;addy,-122*size;
sleep,long;diffusealpha,0;
sleep,long;diffusealpha,1;addx,-144*size;
sleep,long;addy,122*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_1);addx,72*size;addy,-61*size);
			OnCommand=cmd(diffusealpha,0;sleep,1;
sleep,2*long;diffusealpha,1;
sleep,long;diffusealpha,0;
sleep,3*long;diffusealpha,1;
sleep,long;diffusealpha,0;
sleep,2*long;queuecommand,"On");
		};
		LoadActor(THEME:GetPathG("_style/stomp","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_2);addx,230*size);
			OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1;
sleep,long;addy,-122*size;
sleep,long;diffusealpha,0;
sleep,long;diffusealpha,1;addx,144*size;
sleep,long;addy,122*size;
sleep,long;addy,-122*size;
sleep,long;diffusealpha,0;
sleep,long;diffusealpha,1;addx,-144*size;
sleep,long;addy,122*size;
sleep,long;diffusealpha,0;queuecommand,"On");
		};
		LoadActor(THEME:GetPathG("_style/panel","highlight") )..{
			InitCommand=cmd(zoom,size;diffuse,PlayerColor(PLAYER_2);addx,302*size;addy,-61*size);
			OnCommand=cmd(diffusealpha,0;sleep,1;
sleep,2*long;diffusealpha,1;
sleep,long;diffusealpha,0;
sleep,3*long;diffusealpha,1;
sleep,long;diffusealpha,0;
sleep,2*long;queuecommand,"On");
		};
		GainFocusCommand=cmd(visible,true);
		LoseFocusCommand=cmd(visible,false);
	};
end;

return t;