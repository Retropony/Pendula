local size = 720 / 1080
local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame{
		LoadActor("TFDown")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(accelerate,0.25;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
		};
		LoadActor("TFUp")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TFMid1")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,-90;accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TFMid2")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,90;accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TFMid3")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TFMid4")..{
			InitCommand=cmd(Center;zoom,size;diffusealpha,0.33);
			OnCommand=cmd(accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
	};
else
	t[#t+1] = Def.ActorFrame{
		LoadActor("TPDown")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(accelerate,0.25;addx,SCREEN_WIDTH;addy,SCREEN_HEIGHT);
		};
		LoadActor("TPUp")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TPMid1")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,-90;accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TPMid2")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,90;accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
		LoadActor("TPMid3")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(accelerate,0.25;addx,-SCREEN_WIDTH;addy,-SCREEN_HEIGHT);
		};
	};
end;
return t;