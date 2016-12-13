local size = 720 / 1080
local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = Def.ActorFrame{
		LoadActor("TFDown")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor("TFUp")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor("TFMid1")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,90;sleep,1);
		};
		LoadActor("TFMid2")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,-90;sleep,1);
		};
		LoadActor("TFMid3")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor("TFMid4")..{
			InitCommand=cmd(Center;zoom,size;diffusealpha,0.33);
			OnCommand=cmd(sleep,1);
		};
	};
else
	t[#t+1] = Def.ActorFrame{
		LoadActor("TPDown")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor("TPUp")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
		LoadActor("TPMid1")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,-90;sleep,1);
		};
		LoadActor("TPMid2")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(rotationz,90;sleep,1);
		};
		LoadActor("TPMid3")..{
			InitCommand=cmd(Center;zoom,size);
			OnCommand=cmd(sleep,1);
		};
	};
end;
return t;