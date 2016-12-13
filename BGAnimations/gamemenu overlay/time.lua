local t = Def.ActorFrame {};

if Future() == 'true' then
	t[#t+1] = LoadFont("future-clock")..{
		InitCommand=cmd(diffuse,color("#FFA8E2");strokecolor,color("#BF1E8A");zoom,1;queuecommand,"Set");
		SetCommand=cmd(settext, string.format("2222 %02i.%02i", MonthOfYear()+1,DayOfMonth());sleep,1;queuecommand,"Set";);
	};
	t[#t+1] = LoadFont("future-clock")..{
		InitCommand=cmd(diffuse,color("#FFA8E2");strokecolor,color("#BF1E8A");zoom,0.7;y,42;queuecommand,"Set");
		SetCommand=cmd(settext, string.format("%02i:%02i", Hour(), Minute());sleep,1;queuecommand,"Set";);
	};
else
	t[#t+1] = LoadFont("present-clock")..{
		InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000");zoom,1;queuecommand,"Set");
		SetCommand=cmd(settext, string.format("%04i %02i.%02i", Year(), MonthOfYear()+1,DayOfMonth());sleep,1;queuecommand,"Set";);
	};
	t[#t+1] = LoadFont("present-clock")..{
		InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000");zoom,0.7;y,36;queuecommand,"Set");
		SetCommand=cmd(settext, string.format("%02i:%02i", Hour(), Minute());sleep,1;queuecommand,"Set";);
	};
end;
return t;