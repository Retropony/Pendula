local size = 720 / 1080
local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame {
		LoadActor("FutureBG")..{
			InitCommand=cmd(Center;zoom,size);
		};
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("PendualBG")..{
			InitCommand=cmd(Center;zoom,size);
		};
	};
end;
return t;