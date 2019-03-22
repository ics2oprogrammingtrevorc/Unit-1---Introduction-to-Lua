-- Title: mathIsFun
-- Name: TrevorC
-- Course: ICS2O/3C
-- This program...Lets you answer math adition, subtraction, multiplication, divison and questions
-- and lets you know if its right

display.setStatusBar(display.HiddenStatusBar)
display.setDefault("background", 0.3, 0.6, 0.9)


local questiobObject
local correctObject
local incorrectObject
local numericFeild
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectAnswer
local randomOperator

local function AskQuestion()

	randomOperator = math.random(1,4)

	randomNumber1 = math.random(10, 20)
	randomNumber2 = math.random(10, 20)

	if (randomOperator == 1) then

		correctAnswer = randomNumber1 + randomNumber2

		questiobObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then
		correctAnswer = randomNumber1 - randomNumber2

		questiobObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif (randomOperator == 3) then
		correctAnswer = randomNumber1 * randomNumber2

		questiobObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = " 

	elseif (randomOperator == 4) then
		correctAnswer = randomNumber1 / randomNumber2

		questiobObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = " 

	end
end 

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function HideIncorrect ()
	incorrectObject.isVisible = false
	AskQuestion()
end

local function NumericFeildListener( event )

	if ( event.phase == "began" ) then

		event.target.text = ""

	elseif event.phase == "submitted" then

		userAnswer = tonumber(event.target.text)

		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			timer.performWithDelay(3000, HideCorrect) 
		else 
			incorrectObject.isVisible = true
			timer.performWithDelay(3000, HideIncorrect)
		end
		event.target.text = ""
	end
end


questiobObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questiobObject:setTextColor(0.6, 0.7, 0.6)

correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 100 )
correctObject:setTextColor(0.5, 0.3, 0.7)
correctObject.isVisible = false

incorrectObject = display.newText( "Incorrect:(", display.contentWidth/2, display.contentHeight*2/3, nil, 100 )
incorrectObject:setTextColor(0.3, 0.3, 1)
incorrectObject.isVisible = false


numericFeild = native.newTextField( display.contentWidth/4, display.contentHeight/3, 300, 200)
numericFeild.inputType = "number"

numericFeild:addEventListener( "userInput", NumericFeildListener )

AskQuestion()