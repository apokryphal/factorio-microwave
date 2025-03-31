local function contains(table, element)
	for _, value in pairs(table) do
		if value == element then
			return true
		end
	end
	return false
end

function getEquipmentCategories()
	local equipmentCategories = { "armor" }

	for k,v in pairs(data.raw["equipment-category"]) do
		if not contains(equipmentCategories, k) then
			table.insert(equipmentCategories, k)
		end
	end
	
	return equipmentCategories
end
