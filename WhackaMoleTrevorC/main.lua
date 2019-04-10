-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
display.setStatusBar(display.HiddenStatusBar)

------------------------------------------------------------------------------------------
--VARIABLES
------------------------------------------------------------------------------------------

local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight)
bkg:setFillColor( 0.3, 0.8, 0.2)

bkg.anchorX = 0
bkg.anchorY = 0
bkg.x = 0
bkg.y = 0

local mole = display.newImage( "Images/mole.png", 0, 0)
mole.x = display.contentCenterX
mole.y = display.contentCenterY
mole:scale(0.33, 0.33)
mole.isVisible = false
local scoreText
local score

---------------------------------------------------------------------------------------------
--FUNTIONS
---------------------------------------------------------------------------------------------

function PopUp ()

	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0 , display.contentHeight)
	mole.isVisible = true
	timer.performWithDelay (500, Hide( ))
end