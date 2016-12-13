-- System created by Lirodon

function Future()
	local systemHour = Hour()
	if systemHour >= 8 and  systemHour <= 18 then
		return 'false'
	elseif systemHour >= 0 and  systemHour <= 7 then
		return 'true'
	elseif systemHour >= 19 and  systemHour <= 23 then
		return 'true'
	end
end
