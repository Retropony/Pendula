local size = 720 / 1080
local x = os.clock()
local t = Def.ActorFrame{
	LoadActor("_headernormal")..{
		InitCommand=cmd(Center;zoom,size);
		OnCommand=cmd(addy,-120;decelerate,0.5;addy,120);
		OffCommand=cmd(accelerate,0.5;addy,-120);
	};
	LoadFont("Common Normal")..{
		Text=string.format(os.clock());
		InitCommand=cmd(CenterX;y,SCREEN_TOP+100;diffuse,color("1,1,1,1");shadowlength,1);
	};
};

return t;
