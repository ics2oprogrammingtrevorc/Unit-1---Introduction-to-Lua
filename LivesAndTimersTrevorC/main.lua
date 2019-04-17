-- Title: LivesAndTimers
-- Name: TrevorC
-- Course: ICS2O/3C
-- This program...Makes a math game with lives and a timer

local totalSeconds = 5
local secondsLeft
local clockText
local countDownTimer

local lives = 3
local heart1
local heart2

---------------------------------------------------------------------------------------
--------------------  LOCAL FUNCTIONS  --------------------------------------
---------------------------------------------------------------------------------------

local function updateTime()

	secondsLeft = secondsLeft - 1

	clockText.text = secondsLeft .. ""



	if (secondsLeft == 0) then
		secondsLeft = totalSeconds
		lives = lives - 1

		if (lives == 3) then
			heart3.isVisible = false
		elseif (lives == 2) then
			heart2.isVisible = false
		elseif  (lives == 1) then
			heart1.isVisible = false
		end

	end
end

local function StartTimer()
	countdownTimer = timer.performWithDelay( 1000, UpdateTime, 0)
end

-------------------------------------------------------------------------
---------------------------  OBJECT CREATION  ------------------------------------
-------------------------------------------------------------------------

heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 7 / 8
heart2.y = display.contentHeight * 1 / 7

heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 6 / 8
heart1.y = display.contentHeight * 1 / 7

heart3 = display.newImageRect("Images/heart.png", 100, 100)
heart3.x = display.contentWidth * 5 / 8
heart3.y = display.contentHeight * 1 / 7