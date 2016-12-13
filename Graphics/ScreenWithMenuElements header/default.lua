local size = 720 / 1080
local t = Def.ActorFrame{
	LoadActor("big")..{
		InitCommand=cmd(x,-780*size;y,-220*size);
		OnCommand=cmd(spin;effectmagnitude,0,0,12);
	};
	LoadActor("big")..{
		InitCommand=cmd(x,780*size;y,-220*size);
		OnCommand=cmd(spin;effectmagnitude,0,0,-12);
	};
	LoadActor("small")..{
		InitCommand=cmd(x,-590*size;y,0);
		OnCommand=cmd(spin;effectmagnitude,0,0,12);
	};
	LoadActor("small")..{
		InitCommand=cmd(x,590*size;y,0);
		OnCommand=cmd(spin;effectmagnitude,0,0,-12);
	};
	LoadActor("header");
	LoadFont("_dfpsogei-w9 64px")..{
		Name="HeaderText";
		Text=string.upper( Screen.String("HeaderText") );
		InitCommand=cmd(y,-13;diffuse,color("#fffffc");diffusebottomedge,color("#c6c39e");strokecolor,color("#111111"));
	};
};
return t;