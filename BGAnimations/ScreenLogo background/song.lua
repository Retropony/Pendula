local size = 720 / 1080
local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathS("_Menu","future"))..{
			OnCommand=cmd(play);
			OffCommand=cmd(stop);
		};
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathS("_Menu","present"))..{
			OnCommand=cmd(play);
			OffCommand=cmd(stop);
		};
	};
end;
return t;