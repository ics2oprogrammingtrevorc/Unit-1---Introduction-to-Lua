-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar)

local physics = require("physics")

physics.start()

local ground = display.newImage("Images/ground.png", 0, 0)
ground.x = 1246
ground.y = 738
ground.width = display.contentWidth * 3

physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

local beam = display.newImage("Images/beam.png", 0, 0)
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65
beam.width = display.contentWidth/2
beam.height =display.contentHeight/10

beam:rotate(45)
beam:toBack()

physics.addBody(beam, "static", {friction=0.5, bounce=0.9})



local longBeam = display.newImage("Images/beam_long.png", 0, 0)
longBeam.x = display.contentCenterX/0.5
longBeam.y = display.contentCenterY*1.65
longBeam.width = display.contentWidth/0.5
longBeam.height = display.contentHeight/10

longBeam:rotate(90)
longBeam:toBack()

physics.addBody(longBeam, "static", {friction=0.5, bounce=0.5})

local bkg = display.newImage("Images/bkg.png", 0, 0)

bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

bkg:scale(2, 2)

bkg:toBack()


local function firstBall()
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=1, radius=25})
end

local function secondBall()
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)
	physics.addBody(ball2, {density=1.0, friction=1.5, bounce=1.3, radius=12.5})
end

local function thirdBall()
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)
	physics.addBody(ball3, {density=3.0, friction=0.5, bounce=0.3, radius=5})
end

timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 1000, thirdBall)
