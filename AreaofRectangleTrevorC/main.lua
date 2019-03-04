-- Title: AreaOfRectangleAndCircle
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...displays a colored rectangle with a different colored border.
-- it also calculate the rectangles area. I also coded to make a 
--circle with a given radius that is colored with a different colored border.
-- I used the radius to calculate the area on the ipad.-----------------------------------------------------------------------------------------
local areatext
local textsize = 40
local myrectangle
local widthOfrectangle = 351
local heightOfrectangle = 199
local AreaOfRectangle 

display.setStatusBar(display.HiddenStatusBar)

--set background color of screen
display.setDefault("background", 0, 1, 1)

myrectangle = display.newRect(0, 0, widthOfrectangle, heightOfrectangle)

myrectangle.anchorX = 0
myrectangle.anchorY = 0
myrectangle.x = 20
myrectangle.y = 20

myrectangle.strokeWidth = 20

myrectangle:setFillColor(0.4, 0.07, 1)

myrectangle:setStrokeColor(1, 0, 1)

AreaOfRectangle = widthOfrectangle * heightOfrectangle

areatext = display.newText("The area of this rectangle with a width of \n"  ..
widthOfrectangle .. " and a height of " .. heightOfrectangle .. " is " ..
AreaOfRectangle .. " pixels².", 0, 0, Arial, textsize)

areatext.anchorX = 0
areatext.anchorY = 0
areatext.x = 20
areatext.y = display.contentHeight/2

local radius = 110
local pi = 3.14159
local areaOfCircle 
local circleText
local myCircle

myCircle = display.newCircle(700, 130, radius, radius, pi)

myCircle.strokeWidth = 20

 myCircle:setStrokeColor(0.9, 0.9, 0.)

myCircle:setFillColor(100/255, 200/255, 190/255)

areaOfCircle = radius * radius * pi

circleText = display.newText("The area of this circle with a radius of \n" .. 
	radius .. " x Pi(" .. pi .. ") is " .. areaOfCircle.. " pixels². "
	, 365, 530, Arial, textsize)