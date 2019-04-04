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
-- LOCAL FUNCTIONS
---------------------------------------------------------------------------------------

local function updateTime()

	secondsLeft = secondsLeft - 1

	clockText.text = secondsLeft .. ""



	if (secondsLeft == 0) then
		secondsLeft = totalSeconds
		lives = lives - 1

		