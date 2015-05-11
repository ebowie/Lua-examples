--[[**********************************************************

Group Name: Eric Bowers, Ed Sutton Josh Flemming
Professor: Ali Sever
Course: ITCS 4102
Date: 2/18/2014
Purpose:To demostrate the input/output of the program for Part ii


**************************************************************
]]
print("Hello, This is simple math test program.")-- show what the program going to do
print("This math will be addition test.")
print("There will be 3 multple choice questions.\n") -- giving instructions

print("Problem 1: what is 5 + 2?\n") -- the first output of the question in multple choice format
print("\tA: 5\n \tB: 7\n\tC: 2\n\tD: 11\n")
print("\n")
-- switch statement to answer the questions that is correct
prob1 = {
	['A'] = function (x) print("Incorrect")end,
	['B'] = function (x) print("Correct")end,
	['C'] = function (x) print("Incorrect")end,
	['D'] = function (x) print("Incorrect")end,

}
print("Answer:") -- where to put your answer at
letter1 = io.read() -- this will let the user read in from the key board
letter1 = string.upper(letter1) -- changes the letter into upper case

print(prob1[letter1](x)) -- displays out  if you go the answe correct

print("Problem 2: what is 34 + 2?\n") -- the second output of the question in multple choice format
print("\tA: 30\n\tB: 35\n\tC: 36\n\tD: 37\n")
-- switch statement for the information user entered
prob1 = {
	['A'] = function (x) print("Incorrect")end,
	['B'] = function (x) print("Incorrect")end,
	['C'] = function (x) print("Correct")end,
	['D'] = function (x) print("Incorrect")end,

}
print("Answer:")-- where to put the answer
letter2 = io.read()-- reading in the user answer
letter2 = string.upper(letter2)-- changing to upper case

print(prob1[letter2](x))-- displaying if you got the answer right

print("Problem 3: what is 50 + 50?\n") -- the third question the program asks the user
print("\tA: 100\n\tB: 80\n\tC: 101\n\tD: 99\n")
--switch statement for the input the user enters
prob1 = {
	['A'] = function (x) print("Correct")end,
	['B'] = function (x) print("Incorrect")end,
	['C'] = function (x) print("Incorrect")end,
	['D'] = function (x) print("Incorrect")end,

}
print("Answer:")-- where to put the answer
letter3 = io.read()-- read in the user answer
letter3 = string.upper(letter3)--  change to upper case

print(prob1[letter3](x))-- display if the user got it correct

-- if statement to tell the user that if he got all the anwswer right or not all the answer right
if letter1 == 'B' and letter2 == 'C' and letter3 == 'A'then
  print("You got them all right")
else
  print("You did not get them all right")
end











