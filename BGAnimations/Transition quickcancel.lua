local size = 720 / 1080
local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame{
		LoadActor("TFDown")..{
			InitCommand=cmd(Center;zoom,size;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,0.5;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TFUp")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TFMid1")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(rotationz,90;decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TFMid2")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(rotationz,-90;decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TFMid3")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TFMid4")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT;diffusealpha,0.33);
			OnCommand=cmd(decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
	};
else
	t[#t+1] = Def.ActorFrame{
		LoadActor("TPDown")..{
			InitCommand=cmd(Center;zoom,size;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,0.5;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TPUp")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TPMid1")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(rotationz,-90;decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TPMid2")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(rotationz,90;decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
		LoadActor("TPMid3")..{
			InitCommand=cmd(Center;zoom,size;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
			OnCommand=cmd(decelerate,0.5;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT;sleep,0.2);
		};
	};
end;
return t;