local size = 720 / 1080

local t = Def.ActorFrame{};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(Center;zoom,size);
		LoadActor(THEME:GetPathB("","TFDown"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor(THEME:GetPathB("","TFUp"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor(THEME:GetPathB("","TFMid1"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,90;spin;effectmagnitude,0,0,-6);
		};
		LoadActor(THEME:GetPathB("","TFMid2"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,-90;spin;effectmagnitude,0,0,6);
		};
		LoadActor(THEME:GetPathB("","TFMid3"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		--LoadActor(THEME:GetPathB("","TFMid4"))..{
			--InitCommand=cmd(Center;zoom,size;diffusealpha,0.33);
			--OnCommand=cmd(sleep,1);
		--};
	};
else
	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(Center;zoom,size);
		LoadActor(THEME:GetPathB("","TPDown"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor(THEME:GetPathB("","TPUp"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor(THEME:GetPathB("","TPMid1"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,-90;spin;effectmagnitude,0,0,6);
		};
		LoadActor(THEME:GetPathB("","TPMid2"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,90;spin;effectmagnitude,0,0,-6);
		};
		LoadActor(THEME:GetPathB("","TPMid3"))..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
	};
end;
return t;