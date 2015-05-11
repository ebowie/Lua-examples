--hashmap of foreign word to definition
local dictionary = {}

--raw and translated lines to be printed later
local rawLines = {}
local translatedLines = {}

--used in processing phrases with multiple words
local first = 'f'
local second = 's'

--count anything
local count = 0
local lineNum = 0

--order of checking definition, mfl = middle first last, desc = descending, asc = ascending
local wordOrder = {}

--difference in number of characters between translated and untranslated
local rawCount
local tranCount

--toggles between printing translated statements and untranslated
local go = false

--get user input to dictate how the definitions will be found
io.write('What order of definitions would you like? i.e. <1,2,3>: ')
io.flush()
answer = io.read()

--parse out the answer from user by commas to get the order
for i in string.gmatch(answer, '(%d)') do
	table.insert(wordOrder, i)
end

--setting input to glossary.txt and output to the output file
io.input('glossary.txt')
io.output('translated.txt')

--translates using a key and the order chosen by the user
function translate(key)
local result
local size = #dictionary[key]
local intJ

	--loop through the 3 numbers the user gave for the order
	for i,j in pairs(wordOrder) do
		intJ = tonumber(j)
		--if the size of this current number is <= the size
		if intJ <= size then
			--then use it as the address for dictionary
			result = dictionary[key][intJ]
		end
	end
	return result
end

--this function will make as many space as asked for in the parameters
function makeSpace(num)

	for i = 1, num, 1 do
		io.write(' ')
	end
end

--create a dictionary of key-value hashes from text file
for line in io.lines() do
	for key,value in string.gmatch(line, "(%w*%s*%w*%s*%w+),(.*)") do
		dictionary[key] = {}
		for i in string.gmatch(value, "(%w*%s*%w*%s*%w+)") do
			table.insert(dictionary[key], i)
		end
	end
end

--switch input to the text to be translated and read
io.input('foreign.txt')

--loop through lines in foreign text and use key-value map to define words
for line in io.lines() do
	--loop through 1 word at a time
	for i in string.gmatch(line, "(%w+)") do
		--if this word is not nil then it can be mapped to a translation
		if dictionary[i] ~= nil then
			table.insert(translatedLines, translate(i))
			table.insert(rawLines, i)
		--if it is nil then this is either a  multi-word phrase or undefined
		else
			--count how many words tried so far
			count = count + 1
			if count == 1 then
					--this is word 1 of a possible phrase
					first = i
			elseif count == 2 then
				--this is word 2 of a possible phrase
				second = i
				--if the first word and this word match a phrase (aka does not map to nil)
				if dictionary[first..' '..i] ~= nil then
					table.insert(translatedLines, translate(first..' '..i))
					table.insert(rawLines, first..' '..i)
					count = 0
				end
			elseif count == 3 then
				--if the first 2 words plus this word match a phrase (aka does not map to nil)
				if dictionary[first..' '..second..' '..i] ~= nil then
					table.insert(translatedLines, translate(first..' '..second..' '..i))
					table.insert(rawLines, first..' '..second..' '..i)
					count = 0
				--if we reach here then we have an undefined phrase
				else
					count = 0
					table.insert(translatedLines,'--')
					table.insert(rawLines, '')
				end
			end
		end
	end
	--mark a new line by inserting \n, this will be used later to line up stuff in output
	table.insert(translatedLines, '\n')
	table.insert(rawLines, '\n')
end

--used to count individual tables to toggle printing raw lines and translatedLines
--back and forth
rawCount = 1
tranCount = 1

--this loop will print out foreign line then translated line until all lines are complete
while rawCount < #rawLines do
	--loop until you reach a new line character
	while rawLines[rawCount] ~= '\n' do
		--write the word and a space
		io.write(rawLines[rawCount], ' ')
		--if this word is not as long as its translation, make spaces to align them
		if(string.len(rawLines[rawCount]) < string.len(translatedLines[rawCount])) then
			makeSpace(string.len(translatedLines[rawCount]) - string.len(rawLines[rawCount]))
		end
		rawCount = rawCount + 1
	end
	io.write('\n')
	io.write('-----------------------------------------------------------------\n')
	rawCount = rawCount + 1

	--loop until you reach a new line character
	while translatedLines[tranCount] ~= '\n' do
		--write the word and a space
		io.write(translatedLines[tranCount], ' ')
		--if this word is not as long as its translation, make spaces to align them
		if(string.len(translatedLines[tranCount]) < string.len(rawLines[tranCount])) then
			makeSpace(string.len(rawLines[tranCount]) - string.len(translatedLines[tranCount]))
		end
		tranCount = tranCount + 1
	end
	io.write('\n')
	tranCount = tranCount + 1
	io.write('=================================================================\n')
end




io.close()

