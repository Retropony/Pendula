local t = Def.ActorFrame{
	OnCommand=cmd(sleep,7/6;smooth,1/6;rotationz,5;sleep,5/6;smooth,1/6;rotationz,10;sleep,5/6;smooth,1/6;rotationz,15);
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,-90);
        	OnCommand=cmd(diffusealpha,0;sleep,9/10;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,-75);
        	OnCommand=cmd(diffusealpha,0;sleep,7/10;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,-60);
        	OnCommand=cmd(diffusealpha,0;sleep,11/15;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,-45);
        	OnCommand=cmd(diffusealpha,0;sleep,23/30;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,-30);
        	OnCommand=cmd(diffusealpha,0;sleep,8/10;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,-15);
        	OnCommand=cmd(diffusealpha,0;sleep,5/6;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,0);
        	OnCommand=cmd(diffusealpha,0;sleep,13/15;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,15);
        	OnCommand=cmd(diffusealpha,0;sleep,9/10;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,30);
        	OnCommand=cmd(diffusealpha,0;sleep,14/15;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,45);
        	OnCommand=cmd(diffusealpha,0;sleep,29/30;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,60);
        	OnCommand=cmd(diffusealpha,0;sleep,1;diffusealpha,1);
	};
	LoadActor("led") .. {
		InitCommand=cmd(rotationz,75);
        	OnCommand=cmd(diffusealpha,0;sleep,31/30;diffusealpha,1);
	};
};
return t;