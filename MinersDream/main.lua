-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------


--Common Variables

--Loading menu
--Main menu
local widget = require("widget")

--Local variables
contW = display.contentWidth
contH = display.contentHeight
centerX = display.contentCenterX
centerY = display.contentCenter

--Loading menu
local composer = require("composer")
display.setStatusBar(display.HiddenStatusBar)
composer.gotoScene( "menu" )