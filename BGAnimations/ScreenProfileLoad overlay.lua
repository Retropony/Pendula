local x = Def.ActorFrame{
	LoadFont("Common Normal")..{
		Text=ScreenString("Loading Profiles");
		InitCommand=cmd(x,SCREEN_RIGHT-200;y,SCREEN_BOTTOM-100;diffuse,color("1,1,1,1");shadowlength,1);
		OnCommand=cmd(diffusealpha,0;linear,0.15;diffusealpha,1);
		OffCommand=cmd(linear,0.15;diffusealpha,0);
	};
	LoadFont("Common Normal")..{
		Text=ScreenString("Profiles Loaded");
		InitCommand=cmd(x,SCREEN_RIGHT-200;y,SCREEN_BOTTOM-100;diffuse,color("1,1,1,1");diffusealpha,0;shadowlength,1);
		OffCommand=cmd(sleep,0.15;linear,0.15;diffusealpha,1;sleep,0.15;linear,0.15;diffusealpha,0);
	};
};

x[#x+1] = Def.Actor {
	BeginCommand=function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToLoad() then self:sleep(1); end;
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

return x;