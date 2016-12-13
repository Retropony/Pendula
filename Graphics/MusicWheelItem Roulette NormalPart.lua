return Def.ActorFrame {
	LoadActor("_musicwheel selector");
	LoadActor("_musicwheel random")..{
	InitCommand=cmd(addx,7;texcoordvelocity,0.1,0;);
	};
}