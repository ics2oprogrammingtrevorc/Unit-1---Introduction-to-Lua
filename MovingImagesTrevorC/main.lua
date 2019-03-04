-- Title: MovingImages
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...moves a beetle ship across the screen and makes it fade in and fade out
-- I added another object that moves in another dirrection and a background image

display.setStatusBar(display.HiddenStatusBar)

scrollSpeed = 3

local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

beetleship.alpha = 0

beetleship.x = 0
beetleship.y = display.contentHeight/3

local function 	MoveShip(event)
	beetleship.x = beetleship.x + scrollSpeed	
	beetleship.alpha = beetleship.alpha + 0.005
end

Runtime:addEventListener("enterFrame", MoveShip)


scrollSpeed = 3

local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)

rocketship.alpha = 1

rocketship.x = 1024
rocketship.y = display.contentHeight/10

local function MoveRocketShip(event)
	rocketship.x = rocketship.x - scrollSpeed
	rocketship.alpha = rocketship.alpha - 0.001
end

Runtime:addEventListener("enterFrame", MoveRocketShip)