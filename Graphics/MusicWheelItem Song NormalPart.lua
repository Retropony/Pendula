return Def.ActorFrame {
	LoadActor("_musicwheel selector")..{
	InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Regular');
	};
	LoadActor("course_wheel.png")..{
	InitCommand=cmd(visible,GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' or GAMESTATE:GetPlayMode() == 'PlayMode_Oni';addx,-16);
	};
}