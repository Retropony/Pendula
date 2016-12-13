local size = 720 / 1080
local t = Def.ActorFrame{
	LoadFont("_Impact 124px") .. { 
          InitCommand=cmd(x,SCREEN_CENTER_X+128;y,SCREEN_CENTER_Y-74;maxwidth,1000;horizalign,right;diffuse,color("#FFFFFF");strokecolor,color("#000000");zoomx,0.8*size;zoomy,size;); 
		  OnCommand=cmd(addx,-32;diffusealpha,0;smooth,0.4;addx,32;diffusealpha,1;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,-32;);
          CurrentSongChangedMessageCommand=cmd(playcommand,"Set"); 
          CurrentCourseChangedMessageCommand=cmd(playcommand,"Set"); 
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self) 
               local song = GAMESTATE:GetCurrentSong(); 
               if song then
					self:finishtweening();
					self:smooth(0.2);
					self:diffusealpha(0);
					self:addx(32);
                    self:settext(song:GetDisplayMainTitle()); 
                    self:playcommand("Refresh");
					(cmd(stoptweening;addx,-32;diffusealpha,0.0;smooth,0.2;addx,32;diffusealpha,1))(self)
				else
					self:settext("");
					self:playcommand("Refresh");
               end 
          end;
	};
	LoadFont("DFGGothic-EB 64px") .. { 
          InitCommand=cmd(x,SCREEN_CENTER_X+128;y,SCREEN_CENTER_Y;maxwidth,1000;horizalign,right;diffuse,color("#FFFFFF");strokecolor,color("#000000");zoomx,size*0.75;zoomy,size*0.75;); 
		  OnCommand=cmd(addx,-32;diffusealpha,0;smooth,0.4;addx,32;diffusealpha,1;);
		  OffCommand=cmd(decelerate,0.3;diffusealpha,0;addx,-32;);
          CurrentSongChangedMessageCommand=cmd(playcommand,"Set"); 
          CurrentCourseChangedMessageCommand=cmd(playcommand,"Set"); 
          ChangedLanguageDisplayMessageCommand=cmd(playcommand,"Set"); 
          SetCommand=function(self) 
               local song = GAMESTATE:GetCurrentSong(); 
               if song then
					self:finishtweening();
					self:smooth(0.2);
					self:diffusealpha(0);
					self:addx(32);
                    self:settext(song:GetDisplayArtist()); 
                    self:playcommand("Refresh");
					(cmd(stoptweening;addx,-32;diffusealpha,0.0;smooth,0.2;addx,32;diffusealpha,1))(self)
				else
					self:settext("");
					self:playcommand("Refresh");
               end 
          end;
	};
};
return t;