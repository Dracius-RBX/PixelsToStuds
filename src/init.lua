-- PixelsToStuds.lua
-- Written by Dracius LLC
-- July 27th, 2021
-- An easy library for pixel conversion and math, especially with surface guis.

local math = require(script.Util.math)

local PixelsToStuds = {}

function PixelsToStuds:fromSurfaceGui(gui, element, axis, pos)
	local pixels = element.AbsolutePosition[axis]
	
	if pos == "Left" then
		-- stay the same
	elseif pos == "Right" then
		pixels = pixels + element.AbsoluteSize[axis]
	elseif pos == "Center" then
		pixels = pixels + element.AbsoluteSize[axis] / 2
	end
	
    return math:getConversion(pixels, gui.PixelsPerStud)
end

function PixelsToStuds:offsetFromPart(part, axis, studs, inverted)
	-- FINISHME:
	-- offset parts based on axis/pos
	local size = part.Size[axis]
	
	if inverted then
		return size/2 - studs
	else
		return -size/2 + studs
	end
end

return PixelsToStuds