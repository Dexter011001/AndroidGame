--
-- For more information on config.lua see the Project Configuration Guide at:
-- https://docs.coronalabs.com/guide/basics/configSettings
--
local aspectRatio = display.pixelHeight / display.pixelWidth

application =
{
	content =
	{
		width = 320,
        height = 480,
		scale = "letterBox",
		fps = 60,
		
		--[[
		imageSuffix =
		{
			    ["@2x"] = 1.5,
			    ["@4x"] = 3.0,
		},
		--]]
	},
}

