-- Title: HelloWorld
-- Name: TrevorC.
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
------------------------------------------------------------------------------------------

display.setDefault("background", 110/255, 10/255, 248/255)

--print "Hello, World" to the command terminal
print("Hello, Ms Raffin!")

--create a local variable
local textObject

-- displays text on the screen at position x = 512 and y = 380 with
-- a default font style and font size of 59
textObject = display.newText("Hello, Ms Raffin!", 512, 380, nil, 59)