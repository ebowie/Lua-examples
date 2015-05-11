-- Lua data structures
-- Tables are the primary data structure of lua

-- Simple table example
myTable = {}
for i=1, 10 do
	myTable[i] = i
end

-- print table
for i, v in ipairs(myTable) do print(i, v) end

-- linked list using tables
list = nil
-- insert some elements
list = {next = list, value = "a"}
list = {next = list, value = "b"}
list = {next = list, value = "c"}
list = {next = list, value = "d"}


-- traverse the list
local l = list
while l do
	print(l.value)
	l = l.next
end
