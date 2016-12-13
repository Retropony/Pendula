local size = 720 / 1080
local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame{
		LoadActor("TFDown")..{
			InitCommand=cmd(Center;zoom,size;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("TFUp")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("TFMid1")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;rotationz,90;sleep,1);
		};
		LoadActor("TFMid2")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;rotationz,-90;sleep,1);
		};
		LoadActor("TFMid3")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("TFMid4")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT;diffusealpha,0.33);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("ScreenTransition")..{
			StartTransitioningCommand=cmd(play);
		};
	};
else
	t[#t+1] = Def.ActorFrame{
		LoadActor("TPDown")..{
			InitCommand=cmd(Center;zoom,size;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("TPUp")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("TPMid1")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;rotationz,-90;sleep,1);
		};
		LoadActor("TPMid2")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;rotationz,90;sleep,1);
		};
		LoadActor("TPMid3")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,1;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,1);
		};
		LoadActor("ScreenTransition")..{
			StartTransitioningCommand=cmd(play);
		};
	};
end;
return t;