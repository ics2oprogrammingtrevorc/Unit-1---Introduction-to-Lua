-- Title: TouchAndDrag
-- Name: TrevorC
-- Course: ICS2O/3C
-- This program...has 2 images on the screen when i click and drag on each image
--it moves with my finger

display.setStatusBar(display.HiddenStatusBar)

local backgroundImage = display.newImageRect("Images/Background.jpg", 2048, 1536)

local mario = display.newImageRect("Images/mario.png", 150, 150)
local marioWidth = mario.width
local marioHeight = mario.height

local banana = display.newImageRect("Images/banana.png", 150, 150)
local bananaWidth = banana.width
local bananaHeight = banana.height

local chicken = display.newImageRect("Images/chicken.png", 150, 150)
local chickenWidth = chicken.width
local chickenHeight = chicken.height

local alreadyTouchedMario = false
local alreadyTouchedBanana = false
local alreadyTouchedChicken = false

mario.x = 400
mario.y = 500	

banana.x = 300
banana.y = 200

chicken.x = 600
chicken.y = 700

local function Bananalistener (touch)

	if (touch.phase == "began") then
		if (alreadyTouchedMario == false) and (alreadyTouchedChicken == false) then
			alreadyTouchedBanana = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedBanana == true) ) then 
		banana.x = touch.x
		banana.y = touch.y
	end

	if (touch.phase == "ended") then 
		alreadyTouchedBanana = false
		alreadyTouchedMario = false
	end
end

banana:addEventListener("touch", Bananalistener)

local function Mariolistener (touch)

	if (touch.phase == "began") then
		if (alreadyTouchedBanana == false) and (alreadyTouchedChicken == false) then
			alreadyTouchedMario = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedMario == true) ) then
		mario.x = touch.x
		mario.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedMario = false
		alreadyTouchedBanana = false
	end
end

mario:addEventListener("touch", Mariolistener)

local function Chickenlistener (touch)

	if (touch.phase == "began") then
		if (alreadyTouchedBanana == false) and (alreadyTouchedMario == false) then
			alreadyTouchedChicken = true
		end
	end

	if ( () )
