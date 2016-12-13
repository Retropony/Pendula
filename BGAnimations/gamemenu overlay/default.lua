local size = 720 / 1080

local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = LoadActor("f-chrono")..{
		InitCommand=cmd(zoom,size;x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y-333);
		OnCommand=cmd(zoom,0;sleep,0.4;smooth,0.25;zoom,size);
	};
	t[#t+1] = LoadActor("t-deco")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y-333);
		OnCommand=cmd(zoom,0;sleep,0.25;smooth,0.25;zoom,size);
	};
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,42;sleep,0.75;bounceend,0.45;addx,-42);
		LoadActor("FUpBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-300);
			OnCommand=cmd(addy,-60;linear,0.25;addy,60)
		};
		LoadActor("FDownBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+660);
			OnCommand=cmd(addy,60;linear,0.25;addy,-60)
		};
	};
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(zoomx,-size;zoomy,size;addx,1280);
		OnCommand=cmd(addx,-42;sleep,0.75;bounceend,0.45;addx,42);
		LoadActor("FUpBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-300);
			OnCommand=cmd(addy,-60;linear,0.25;addy,60)
		};
		LoadActor("FDownBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+660);
			OnCommand=cmd(addy,60;linear,0.25;addy,-60)
		};
	};
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(zoom,size;CenterX);
		OnCommand=cmd(addy,-60*size;linear,0.25;addy,60*size);
		LoadActor("c-gear")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,180;sleep,0.75;decelerate,0.45;rotationz,0);
		};
		LoadActor("f-black")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,0;sleep,0.75;decelerate,0.45;rotationz,-180);
		};
		LoadActor("c-white")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,0;sleep,0.75;decelerate,0.45;rotationz,180);
		};
		LoadActor("c-mini")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,-180;sleep,0.75;decelerate,0.45;rotationz,0);
		};
		LoadActor("c-glass")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
		};
	};
else
	t[#t+1] = LoadActor("c-chrono")..{
		InitCommand=cmd(zoom,size;x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y-333);
		OnCommand=cmd(zoom,0;sleep,0.4;smooth,0.25;zoom,size);
	};
	t[#t+1] = LoadActor("t-deco")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y-333);
		OnCommand=cmd(zoom,0;sleep,0.25;smooth,0.25;zoom,size);
	};
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(zoom,size);
		OnCommand=cmd(addx,42;sleep,0.75;bounceend,0.45;addx,-42);
		LoadActor("UpBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-300);
			OnCommand=cmd(addy,-60;linear,0.25;addy,60)
		};
		LoadActor("DownBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+660);
			OnCommand=cmd(addy,60;linear,0.25;addy,-60)
		};
	};
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(zoomx,-size;zoomy,size;addx,1280);
		OnCommand=cmd(addx,-42;sleep,0.75;bounceend,0.45;addx,42);
		LoadActor("UpBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-300);
			OnCommand=cmd(addy,-60;linear,0.25;addy,60)
		};
		LoadActor("DownBar")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+660);
			OnCommand=cmd(addy,60;linear,0.25;addy,-60)
		};
	};
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(zoom,size;CenterX);
		OnCommand=cmd(addy,-60*size;linear,0.25;addy,60*size);
		LoadActor("c-gear")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,-180;sleep,0.75;decelerate,0.45;rotationz,0);
		};
		LoadActor("c-black")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,180;sleep,0.75;decelerate,0.45;rotationz,0);
		};
		LoadActor("c-white")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,-180;sleep,0.75;decelerate,0.45;rotationz,0);
		};
		LoadActor("c-mini")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
			OnCommand=cmd(rotationz,180;sleep,0.75;decelerate,0.45;rotationz,0);
		};
		LoadActor("c-glass")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-320);
		};
	};
end;
	t[#t+1] = LoadActor("time")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_TOP+98;zoom,size);
		OnCommand=cmd(diffusealpha,0;sleep,0.4;linear,0.25;diffusealpha,1);
	};
return t;