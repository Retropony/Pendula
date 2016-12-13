return Def.ActorFrame {
	LoadActor("_MusicWheel highlight_normal")..{
		InitCommand=cmd(blend,'BlendMode_Add';diffusealpha,0.5;visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
	};
	LoadActor("_MusicWheel highlight_normal")..{
		InitCommand=cmd(blend,'BlendMode_Add';visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
		LoopCommand=cmd(diffusealpha,0.5;faderight,6;linear,1;faderight,0;linear,1;diffusealpha,0.5;queuecommand,"Loop");
	};
	LoadActor("_MusicWheel highlight_course")..{
		InitCommand=cmd(blend,'BlendMode_Add';visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni';addx,-32);
	};
}