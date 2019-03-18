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
local incorrectAnswer


local function AskQuestion()
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	questiobObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

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


questiobObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questiobObject:setTextColor(0.6, 0.7, 0.6)

correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(0.5, 0.3, 0.7)
correctObject.isVisible = false

numericFeild = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
numericFeild.inputType = "number"

numericFeild:addEventListener( "userInput", NumericFeildListener )

AskQuestion()