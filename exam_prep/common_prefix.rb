=begin
Input: Array of strings
Output: String- Longest common prefix among the array of strings

Rules:
subtring that's in all of the strings in the array
substring starts from first index of string
Return empty string if no common prefix

High level:
Iteration pattern:
Start with first letter and one letter long prefix
Check if it's included in all the other items of the array using .all?
If it is add it to prefix variable
Start with first letter add two letter long prefix
... do again
Start with first letter add three letter long prefix
... same
Continue until prefix is full word

Algorithm
Initialize a variable to store common prefix. Start at empty string.

0.upto(length of the array) start loop iteration
substring = index range
check if substring is included in all the items of the array using .all? and .include?
if it is reassign prefix variable to substring
end loop iteration
return prefix variable
=end

def common_prefix(array)
	prefix = ""
	first = array.first
	0.upto(first.length-1) do |end_range|
		substring = first[0..end_range]
		if array.all?{ |word| word.include?(substring)}
			prefix = substring
		end
	end
	prefix
end

p common_prefix(["flower", "flow", "flight"])
p common_prefix(["dog", "racecar", "car"])
p common_prefix(["throne", "throne"])