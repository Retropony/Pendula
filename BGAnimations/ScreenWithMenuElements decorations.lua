-- Loads up a slew of objects to load into the screen, like how 3.9 does.
-- I prefer to keep these optional, incase another screen wants to hide 
-- these elements.
local t = Def.ActorFrame {};
t[#t+1] = StandardDecorationFromFileOptional("Footer","Footer");
t[#t+1] = StandardDecorationFromFileOptional( "Help", "Help" );
t[#t+1] = StandardDecorationFromFileOptional("Header","Header");
return t