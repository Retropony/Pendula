local size = 720 / 1080

local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = LoadActor("f-deco");
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(y,140);
		LoadActor("ft-fclock")..{
			OnCommand=cmd(x,-92;y,-28;spin;effectmagnitude,0,0,12);
		};
		LoadActor("ft-clock")..{
			OnCommand=cmd(zoom,0.5;x,-92;y,-28;spin;effectmagnitude,0,0,12);
		};
		LoadActor("ft-fclock")..{
			OnCommand=cmd(x,92;y,-28;spin;effectmagnitude,0,0,12);
		};
		LoadActor("ft-clock")..{
			OnCommand=cmd(zoom,0.5;x,92;y,-28;spin;effectmagnitude,0,0,12);
		};
		LoadActor("ft-fclock")..{
			OnCommand=cmd(zoom,1.2;x,52;y,-32;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("ft-clock")..{
			OnCommand=cmd(zoom,0.7;x,52;y,-32;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("ft-fclock")..{
			OnCommand=cmd(zoom,1.2;x,-52;y,-32;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("ft-clock")..{
			OnCommand=cmd(zoom,0.7;x,-52;y,-32;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("ft-gear")..{
			OnCommand=cmd(x,-32;y,-1;spin;effectmagnitude,0,0,12);
		};
		LoadActor("ft-gear")..{
			OnCommand=cmd(x,32;y,-1;spin;effectmagnitude,0,0,12);
		};
		LoadActor("ft-gear")..{
			OnCommand=cmd(zoom,1.5;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("ft-gear")..{
			OnCommand=cmd(y,-32;zoom,1.5;spin;effectmagnitude,0,0,12);
		};
	};
else
	t[#t+1] = LoadActor("c-deco");
	t[#t+1] = Def.ActorFrame{
		InitCommand=cmd(y,140);
		LoadActor("t-fclock")..{
			OnCommand=cmd(x,-92;y,-28;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("t-clock")..{
			OnCommand=cmd(zoom,0.5;x,-92;y,-28;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("t-fclock")..{
			OnCommand=cmd(x,92;y,-28;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("t-clock")..{
			OnCommand=cmd(zoom,0.5;x,92;y,-28;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("t-fclock")..{
			OnCommand=cmd(zoom,1.2;x,52;y,-32;spin;effectmagnitude,0,0,12);
		};
		LoadActor("t-clock")..{
			OnCommand=cmd(zoom,0.7;x,52;y,-32;spin;effectmagnitude,0,0,12);
		};
		LoadActor("t-fclock")..{
			OnCommand=cmd(zoom,1.2;x,-52;y,-32;spin;effectmagnitude,0,0,12);
		};
		LoadActor("t-clock")..{
			OnCommand=cmd(zoom,0.7;x,-52;y,-32;spin;effectmagnitude,0,0,12);
		};
		LoadActor("t-gear")..{
			OnCommand=cmd(x,-32;y,-1;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("t-gear")..{
			OnCommand=cmd(x,32;y,-1;spin;effectmagnitude,0,0,-12);
		};
		LoadActor("t-gear")..{
			OnCommand=cmd(zoom,1.5;spin;effectmagnitude,0,0,12);
		};
		LoadActor("t-gear")..{
			OnCommand=cmd(y,-32;zoom,1.5;spin;effectmagnitude,0,0,-12);
		};
	};
end;
return t;