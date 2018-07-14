-- --------------------------------------------------------
-- Main menu
-- --------------------------------------------------------
local composer = require( "composer" )
local widget = require("widget")

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
local title = display.newImageRect("title.jpg", 500,80)
 title.x = display.contentCenterX 
 title.y = 100

-- ---------------------------------------------
-- Buttons[play,settings,store]
-- ---------------------------------------------



--Play:

local playButton = widget.newButton{
	id = "playButton",
	defaultFile="play.png",
	width = 200,
	height = 100,
	onEvent = playButtonEvent,
	left = 220,
	top = 200,
}

--positoining to the center

--to display practice
local myText = display.newText( "Hello Button", centerX, 150, native.systemFont, 30 )
myText:setFillColor( 1, 0, 0 )

local playButtonEvent= function(event)
	if event.phase == "release" then
		print("[PLAY]")
	end
	if (event.phase == "began") then  
 
		myText.text = "Button Phase is: " .. event.phase
		playButton.xScale = 0.85 -- Scale the button on touch down so user knows its pressed
    	playButton.yScale = 0.85
 
     elseif (event.phase == "moved") then
 
    	myText.text = "Button Phase is: " .. event.phase
 
    elseif (event.phase == "ended" or event.phase == "cancelled") then
 
		myText.text = "Button Phase is: " .. event.phase
		playButton.xScale = 1 -- Re-scale the button on touch release 
    	playButton.yScale = 1
 
    end
 
    return true
end

--touch event handler:
playButton:addEventListener("touch",playButtonEvent)


--Settings:
local settingButtonEvent = function(event)
	if event.phase == "release" then
		print("Settings")
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
