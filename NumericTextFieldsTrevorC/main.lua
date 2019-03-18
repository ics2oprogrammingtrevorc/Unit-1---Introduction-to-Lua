-- Title: NumericTextFields
-- Name: TrevorC
-- Course: ICS2O/3C
-- This program...Lets you answer math adition questions and lets you know if its right

display.setStatusBar(display.HiddenStatusBar)
display.setDefault("background", 0.3, 0.6, 0.9)


local questiobObject
local correctObject
local numericFeild
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer


local function AskQuestion()
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	questiobObject.text = randomNumber1 .. " + " .. random .. " = "

end 

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFeildListener( event )

	if ( event.phase == "began" ) then

		event.target.text = ""

	elseif event.phase == "submitted" then

		userAnswer = tonumber(event.target.text)

		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true 
			timer.performWithDelay(2000, HideCorrect)
		end
	end
end


