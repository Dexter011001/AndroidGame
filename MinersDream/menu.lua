-- --------------------------------------------------------
-- Main menu
-- --------------------------------------------------------
local composer = require( "composer" )
local widget = require("widget")
local nanosvg = require("plugin.nanosvg")

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
--Local variables
contW = display.contentWidth
contH = display.contentHeight
centerX = display.contentCenterX
centerY = display.contentCenter

--Loads scene from main
local background = display.newImageRect("background.jpg",750, 1300)
 background.x = display.contentCenterX
 background.y = display.contentCenterY

--title
local title = display.newImageRect("title.png", 500,80)
 title.x = display.contentCenterX 
 title.y = 150

-- ---------------------------------------------
-- Buttons[play,settings,store]
-- ---------------------------------------------

--Play:
local playButtonEvent= function(event)
	if event.phase == "release" then
		print("[PLAY]")
	end
end

local playButton = widget.newButton{
	id = "playButton",
	defaultFile="play.png",
	width = 100,
	height = 50,
	onEvent = playButtonEvent,
	left = 110,
	top = 250,
	overFile = "over.jpg",
}

--Play button press function
function playButton()
	local background = display.newImageRect("backgroundDark.jpg")
	background.x = display.contentCenterX
	background.y = display.contentCenterY
end



--Settings:
local settingButtonEvent = function(event)
	if event.phase == "release" then
		playButton()
	end
end

local settingButton = widget.newButton{
	id = "settingButton",
	defaultFile = "setting.png",
	width = 100,
	height = 50,
	onEvent = settingButtonEvent,
	left = 110,
	top = 310,
	overfile = "over.jpg"
}

local storeButtonEvent = function(event)
	if event.phase == "release" then
		print("[STORE]")
	end
end

local storeButton = widget.newButton{
	id = "storeButton",
	defaultFile = "store.png",
	width = 100,
	height = 50,
	onEvent = storeButtonEvent,
	left = 110,
	top = 370,
	overfile = "over.jpg"
}


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
