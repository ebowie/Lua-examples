-- hello.lua
-- the first program

-- for loop below
io.write("Demo of for loop: \n")

for i = 0, 10, 1 do
	print ("Loop number:",i)
end
-- for loop above

-- while loop below
print("\nDemo of while loop: \n")

i = 0
while i < 5 do
	print(i, "< 5")
	i = i + 1
end
-- while loop above

-- if statements below
print("\nDemo of if statement: \n")

k = 5
print("k is 5.\n")
print("k < 8?: ")

if k < 8 then
	print("true")
else
	print("false")
end
-- if statements above

-- repeat loop below
print("\nDemo of repeat loop: \n")
i = 13
repeat
	print("This will repeat until i is less than 10. i = ", i)
	i = i - 1
until i < 10
-- repeat loop above

-- break below
print("\nDemo of break command: \n")
while true do
	print("This while loop will break after one loop")
	break
end
-- break above
