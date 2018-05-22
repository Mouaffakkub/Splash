-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy 
-- menuScene
-------------------------------------------------------------------------------------------

local composer = require( "composer" )
local widget = require("widget")
 
local scene = composer.newScene()

local function showGameScene()
    local options = {
        effect = "fade",
        time = 500
    }
    composer.gotoScene( "gameScene" , options )
end 

function scene:create( event )
 
    local sceneGroup = self.view

 
end
 
 

function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        local background = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight)
        background:setFillColor( 1,1,0 )
        sceneGroup:insert( background )

        local title = display.newText("Menu Scene", display.contentWidth / 2, display.contentHeight / 2, native.systemFont, 48)
        title:setFillColor( 0,0,0 )
        sceneGroup:insert( title )


        local button = widget.newButton
        {
            label = "Go to Game",
            fontSize = 48,
            -- Properties for a rounded rectangle button
            shape = "roundedRect",
            width = 320,
            height = 100,
            cornerRadius = 2,
            fillColor = { default={1,1,1,1}, over={1,0.1,0.7,0.4} },
            strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
            strokeWidth = 4,
            onEvent = function (event)
                if event.phase == "ended" then
                    composer.gotoScene("gameScene")
                end
            end
        }
        button.x = display.contentWidth / 2
        button.y = display.contentHeight / 2 - 100
        sceneGroup:insert(button)
 
    elseif ( phase == "did" ) then

    end
end
 
 

function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end
 
 

function scene:destroy( event )
 
    local sceneGroup = self.view
    
end
 
 

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

 
return scene