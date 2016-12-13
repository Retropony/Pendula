local function CurGameName()
	return GAMESTATE:GetCurrentGame():GetName()
end

function GameCompatibleModes()
	local Modes = {
		dance = "Single,Versus,Double,Couple,Solo,Routine",
		pump = "Single,Versus,HalfDouble,Double,Couple,Routine",
		beat = "5Single,5Versus,5Double,7Single,7Versus,7Double",
		kb7 = "Single,Versus",
		para = "Single,Versus",
		techno = "4Single,5Single,8Single,4Versus,5Versus,8Versus,4Double,5Double,8Double",
		lights = "Cabinet",
		kickbox = "Human,Quadarm,Insect,Arachnid,Hversus,Qversus,Iversus,Aversus",
	}
	return Modes[CurGameName()]
end