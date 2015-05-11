--[[**********************************************************

Group Name: Eric Bowers, Ed Sutton Josh Flemming
Professor: Ali Sever
Course: ITCS 4102
Date: 3/13/2014
Purpose:To demostrate the input/output of the program for Part ii


**************************************************************
]]
Again = "yes"
while Again == "yes" do -- to start the program over
option ="pass" --default as pass
player1 = 1    --default as one
player2 = 2	   --default as two
player3 = 3    --default as three
reset = 0      --default as zero
player =0     --default as zero

perpetrator = {3} --array set for 3 spaces

randomPerpetrator =0 -- variable set zero


while option == "pass" or option == "incorrect" do --for the program to keep going if all players pass



randomLetter =0 -- variable set zero
display ={3}  --array set for 3 spaces
guess = {3} --array set for 3 spaces

playerCount1=0  -- variable set zero
playerCount2=0 -- variable set zero
playerCount3=0 -- variable set zero

manyPerps = 0 -- variable set zero

--letters set to  specified numbers to be call from the random method
a = 1
b = 2
c = 3
d = 4
e = 5
f = 6
g = 7


-- to go by the computer time
math.randomseed( os.time() )
--//////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////

-- this while loop search for random three letters
 i=0
while true do
math.random(1,7)
randomLetters = math.random(1,7)





    display[i] = 'i'

if randomLetters == a and a ~= 0  then
    display[i] = 'a'
	a = 0
	elseif randomLetters == b  and b ~= 0 then
			display[i] = 'b'
			b = 0
	elseif randomLetters == c and c ~= 0 then
			display[i] = 'c'
			c = 0
	elseif randomLetters == d and d ~= 0 then
			display[i] = 'd'
			d = 0
	elseif randomLetters == e and e ~=0 then
			display[i] = 'e'
			e = 0
	elseif randomLetters == f and f ~= 0 then
			display[i] = 'f'
			f = 0
	elseif randomLetters == g and g ~= 0 then
			display[i] = 'g'
			g = 0
	end

	if display[i] ~= 'i' then
	  if i == 2 then
		break
		end
		i = i + 1
	end


end
-- this display the random three letters
print("these are the random letters :",display[0],display[1],display[2])



--//////////////////////////////////////////////////////////






--//////////////////////////////////////////////////////////
-- reset letter back to its original state
a = 1
b = 2
c = 3
d = 4
e = 5
f = 6
g = 7

j=0
--this while loop search for the perpetrator and places then with a letter

if reset ~= 1 then

while true do

math.random(1,7)
randomPerpetrator = math.random(1,7)

	perpetrator[j] = 'i'

	if randomPerpetrator == a and a ~= 0  then
		perpetrator[j] = 'a'
		a = 0
		elseif randomPerpetrator == b  and b ~= 0 then
				perpetrator[j] = 'b'
				b = 0
		elseif randomPerpetrator == c and c ~= 0 then
				perpetrator[j] = 'c'
				c = 0
		elseif randomPerpetrator == d and d ~= 0 then
				perpetrator[j] = 'd'
				d = 0
		elseif randomPerpetrator == e and e ~=0 then
				perpetrator[j] = 'e'
				e = 0
		elseif randomPerpetrator == f and f ~= 0 then
				perpetrator[j] = 'f'
				f = 0
		elseif randomPerpetrator == g and g ~= 0 then
				perpetrator[j] = 'g'
				g = 0
		end

		if perpetrator[j] ~= 'i' then
		  if j == 2 then
		  reset = 1
			break
			end
			j = j + 1
		end


	end
end
-- this is used for testing to get right answer
print("these are the perpetrator :", perpetrator[0],perpetrator[1],perpetrator[2])
--//////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////
-- this counts how many perpetrator are display on the console each round
for x = 0, 2 do
	for y = 0, 2 do
	if display[x] == perpetrator[y] then

	manyPerps = manyPerps + 1

	end

	end


end

-- display the number perpetrator
print(manyPerps.." perpetrator".."\n")

--//////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////


-- this if statement is options for player 1 if want to pass or guess

if(player1 == 1) then
 print("Guess or Pass Player 1")
 option = io.read()
 option = string.lower(option)
 print("\n")

	while option ~= "guess" and option ~= "pass" do
		print("Guess or Pass Player 1")
			option = io.read()

			print("\n")

	end

		if option == "pass" then
			print("player 1 has pass","\n")
		end

	if option == "guess" then
	   print("guess 1")
	   guess[0] = io.read()
	   guess[0] = string.lower(guess[0])
	while guess[0] ~= "a" and guess[0] ~= "b"and guess[0] ~= "c" and guess[0] ~= "d" and guess[0] ~= "e" and guess[0] ~="f"and guess[0]~="g" do
		 print("guess 1 again")
			guess[0] = io.read()
			guess[0] = string.lower(guess[0])
	   end
	   print("guess 2")
	   guess[1] = io.read()
	   guess[1] = string.lower(guess[1])
	   while guess[1] ~= "a" and guess[1] ~= "b"and guess[1] ~= "c" and guess[1] ~= "d" and guess[1] ~= "e" and guess[1] ~="f"and guess[1]~="g" do
		 print("guess 2 again")
			guess[1] = io.read()
			guess[1] = string.lower(guess[1])
	   end
	   print("guess 3")
	   guess[2] = io.read()
	   guess[2] = string.lower(guess[2])
	   while guess[2] ~= "a" and guess[2] ~= "b"and guess[2] ~= "c" and guess[2] ~= "d" and guess[2] ~= "e" and guess[2] ~="f"and guess[2]~="g" do
		 print("guess 2 again")
			guess[2] = io.read()
			guess[2] = string.lower(guess[2])
	   end
	   print("\n")


		-- this is to check if the player has guess right or not
	   for x=0, 2 do
		for y=0, 2 do
		 if guess[x] == perpetrator[y] then
		   playerCount1 = playerCount1 + 1
		   end
		end
	end

		if playerCount1 == 3 then
			player = 1
			break

		else
			player1 =0
			option = "incorrect"
			print("player 1 is kick off the game","\n")
		end
end




end
--//////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////


-- this if statement is for player two if he wants to pass or guess

if(player2 == 2 )then
	print("Guess or Pass Player 2")
	option = io.read()
	option = string.lower(option)
	print("\n")

	while option ~= "guess" and option ~= "pass" do
		print("Guess or Pass Player 2")
			option = io.read()
			print("\n")

	end

	if option == "pass" then
		print("player 2 has pass","\n")
	end

	if option == "guess" then
	   print("guess 1")
	   guess[0] = io.read()
	   guess[0] = string.lower(guess[0])
	while guess[0] ~= "a" and guess[0] ~= "b"and guess[0] ~= "c" and guess[0] ~= "d" and guess[0] ~= "e" and guess[0] ~="f"and guess[0]~="g" do
		 print("guess 1 again")
			guess[0] = io.read()
			guess[0] = string.lower(guess[0])
	   end
	   print("guess 2")
	   guess[1] = io.read()
	    guess[1] = string.lower(guess[1])
	   while guess[1] ~= "a" and guess[1] ~= "b"and guess[1] ~= "c" and guess[1] ~= "d" and guess[1] ~= "e" and guess[1] ~="f"and guess[1]~="g" do
		 print("guess 2 again")
			guess[1] = io.read()
			guess[1] = string.lower(guess[1])
	   end
	   print("guess 3")
	   guess[2] = io.read()
	   guess[2] = string.lower(guess[2])
	   while guess[2] ~= "a" and guess[2] ~= "b"and guess[2] ~= "c" and guess[2] ~= "d" and guess[2] ~= "e" and guess[2] ~="f"and guess[2]~="g" do
		 print("guess 2 again")
			guess[2] = io.read()
			guess[2] = string.lower(guess[2])
	   end
		print("\n")
		-- this is to check if the the player guessed right or wrong
	   for x=0, 2 do
		for y=0, 2 do
		 if guess[x] == perpetrator[y] then
		   playerCount2 = playerCount2 + 1
		   end
		end
	end
		if playerCount2 == 3 then
			player = 2
			break

		else
			player2 =0
			option = "incorrect"
			print("player 2 is kick off the game","\n")
		end
end

end
--//////////////////////////////////////////////////////////





--//////////////////////////////////////////////////////////
--this if statment is for player three if he wants to pass or guess

if(player3 == 3)then
print("Guess or Pass Player3 ")
	option = io.read()
	option = string.lower(option)
	print("\n")

	while option ~= "guess" and option ~= "pass" do
		print("Guess or Pass Player 3")
			option = io.read()
			print("\n")

	end

	if option == "pass" then
		print("player 3 has pass","\n")
	end
	if option == "guess" then
	   print("guess 1")
	   guess[0] = io.read()
	   guess[0] = string.lower(guess[0])
	while guess[0] ~= "a" and guess[0] ~= "b"and guess[0] ~= "c" and guess[0] ~= "d" and guess[0] ~= "e" and guess[0] ~="f"and guess[0]~="g" do
		 print("guess 1 again")
			guess[0] = io.read()
			guess[0] = string.lower(guess[0])
	   end
	   print("guess 2")
	   guess[1] = io.read()
	    guess[1] = string.lower(guess[1])
	   while guess[1] ~= "a" and guess[1] ~= "b"and guess[1] ~= "c" and guess[1] ~= "d" and guess[1] ~= "e" and guess[1] ~="f"and guess[1]~="g" do
		 print("guess 2 again")
			guess[1] = io.read()
			guess[1] = string.lower(guess[1])
	   end
	   print("guess 3")
	   guess[2] = io.read()
	   guess[2] = string.lower(guess[2])
	   while guess[2] ~= "a" and guess[2] ~= "b"and guess[2] ~= "c" and guess[2] ~= "d" and guess[2] ~= "e" and guess[2] ~="f"and guess[2]~="g" do
		 print("guess 2 again")
			guess[2] = io.read()
			guess[2] = string.lower(guess[2])
	   end
		print("\n")
		-- this is to check if he guessed right.
	   for x=0, 2 do
		for y=0, 2 do
		 if guess[x] == perpetrator[y] then
		   playerCount3 = playerCount3 + 1
		   end
		end
	end
		if playerCount3 == 3 then
			player = 3
			break

		else
			player3 =0
			option = "incorrect"
			print("player 3 is kick off the game","\n")
		end
	end



	end

	if player1 ==0 and player2 ==0 and player3 ==0 then
		print("game over no one wins")--check to see no one wins
		break
	end
			os.execute("PAUSE")
			os.execute("cls")

end

--this if statement checks see which player has won
if player1 ~= 0 or player2 ~= 0 or player3 ~= 0 then
print("player"..player.." has won","\n")
end
print("do you want to play another game, enter yes") --if the user should play again

Again = io.read()
os.execute("cls")

end
os.remove("history.txt")
print("Thank you for playing") -- to end the game
os.execute("PAUSE")
