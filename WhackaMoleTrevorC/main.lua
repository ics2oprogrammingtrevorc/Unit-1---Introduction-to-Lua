-- Title: WhackAMole
-- Name: TrevorC
-- Course: ICS2O/3C
-- This program... Creates a game of whackamole
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

--------------------------------------------------------VARIABLES-------------------------------------------

local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight)
bkg:setFillColor( 0.7, 0.2, 0.4)

bkg.anchorX = 0
bkg.anchorY = 0
bkg.x = 0
bkg.y = 0

local mole = display.newImage( "images/mole.png", 0, 0)
mole.x = display.contentCenterX
mole.y = display.contentCenterY
mole:scale(2, 2)
mole.isVisible = false
local scoreText
local textSize = 50

--------------------------------------------------------FUNTIONS--------------------------------------------------------------------

function PopUp ( )

	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0 , display.contentHeight)
	mole.isVisible = true
	timer.performWithDelay (5000, Hide)
end

function PopUpDelay( )
	timer.performWithDelay( 3000, PopUp)
end

function Hide( )
	mole.isVisible = false
	PopUpDelay( )
end

function GameStart( )
	PopUpDelay( )
end

function Whacked( event )
	if (event.phase == "began") then
		scoreText.text = scoreText.text + 1
	end
end

------------------------OBJECTS----------------------------------------------------------------------------------------

scoreText = display.newText("0", display.contentWidth/2, display.contentHeight*2/3, nil, 400)
scoreText.y = display.contentHeight *4/7
scoreText.x = display.contentWidth * 1/7
scoreText:setTextColor(.4, .5, .6)
scoreText.isVisible = true

----------------------------EVENT LISTENERS-------------------------------------------------------------------------------------------
mole:addEventListener( "touch", Whacked )

----------------------------START THE GAME ---------------------------------------------------------------------------------------------

GameStart()