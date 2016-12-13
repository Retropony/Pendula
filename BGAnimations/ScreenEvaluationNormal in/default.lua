local size = 720 / 1080
local t = Def.ActorFrame{
	--Def.ActorFrame{
		--Name="FULL COMBO";
		--BeginCommand=function(self)
			--local final = STATSMAN:GetCurStageStats()
			--local p1s = final:GetPlayerStageStats("PlayerNumber_P1")
			--local p2s = final:GetPlayerStageStats("PlayerNumber_P2")
			--local p1c = p1s:GetStageAward()
			--local p2c = p2s:GetStageAward()
			--self:visible( final:OnePassed() )
		--end;
		--LoadActor("FAILED")..{
			--InitCommand=cmd(Center;zoom,size);
		--};
	--};
	Def.ActorFrame{
		Name="CLEAR";
		BeginCommand=function(self)
			local final = STATSMAN:GetCurStageStats()
			self:visible( final:OnePassed() )
		end;
		LoadActor("CLEAR")..{
			InitCommand=cmd(Center;zoom,size);
		};
	};
	Def.ActorFrame{
		Name="FAILED";
		BeginCommand=function(self)
			local final = STATSMAN:GetCurStageStats()
			self:visible( not final:OnePassed() )
		end;
		LoadActor("FAILED")..{
			InitCommand=cmd(Center;zoom,size);
		};
	};
};
return t;