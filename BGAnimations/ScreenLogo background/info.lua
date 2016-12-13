local size = 720 / 1080
local t = Def.ActorFrame {};

-- SM infos

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "_venacti 26px bold diffuse",
			Text= "Songs",
			InitCommand= function(self) self:shadowlength(1):xy(16,24):zoom(size):diffuse(color("#FFFFFF")):horizalign(left) end
		};
		Def.BitmapText { 
			Font= "_venacti 26px bold diffuse",
			Text= tostring(SONGMAN:GetNumSongs()), 
			InitCommand= function(self) self:shadowlength(1):xy(106,24):zoom(size):diffuse(color("#FFFFFF")):horizalign(left) end
		};
	};
	
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "_venacti 26px bold diffuse",
			Text= "Courses",
			InitCommand= function(self) self:shadowlength(1):xy(16,44):zoom(size):diffuse(color("#FFFFFF")):horizalign(left) end
		};
		Def.BitmapText { 
			Font= "_venacti 26px bold diffuse",
			Text= tostring(SONGMAN:GetNumCourses()), 
			InitCommand= function(self) self:shadowlength(1):xy(106,44):zoom(size):diffuse(color("#FFFFFF")):horizalign(left) end
		};
	};
	
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_RIGHT-16);
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "_venacti 26px bold diffuse",
			Text= string.format("StepMania %s", ProductVersion()), 
			InitCommand= function(self) self:shadowlength(1):y(24):zoom(size):diffuse(color("#FFFFFF")):horizalign(right) end
		};
	};	
	
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_RIGHT-16);
	OnCommand=cmd(diffusealpha,0;smooth,0.4;diffusealpha,1;);
	OffCommand=cmd(smooth,0.4;diffusealpha,0;);
		Def.BitmapText { 
			Font= "_venacti 26px bold diffuse",
			Text= "Theme Alpha 0.23", 
			InitCommand= function(self) self:shadowlength(1):y(44):zoom(size):horizalign(right) end
		};
	};

return t;

