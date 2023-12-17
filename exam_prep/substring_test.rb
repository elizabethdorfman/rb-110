=begin
Input: Array of two strings
Output: boolean- whether a substring appears in both strings

Rules:
Substrings must be more than one letter long

High level
Option 1) Create an array of all substrings in first word
then check if each substring is included in the second word
If it is return true if it's not return false

Algorithm
Initialize array of substrings
Iterate through all substrings of incrementing lengths starting from 2 up until length
Iterate through each character of the string
Use range indexing to retrieve substring
Make sure the max index is less than the index - 1 of the word
Add substring to array

Iterate through each substring of array
if it's included in second word return true
end iteration
return false

=end

def substring_test(array)
	substrings = []
	first = array.first
	2.upto(first.length - 1) do |substring_length|
		first.chars.each_with_index do |char, starting_index|
			if starting_index + substring_length < first.length
				substring = first[starting_index,substring_length].downcase
				substrings.push(substring)
			end
		end
	end
	substrings.each do |substring|
		if array[1].downcase.include?(substring)
			return true
		end
	end
	return false
end

p substring_test(["Something", "Fun"])
p substring_test(["Something", "Home"])
p substring_test(["test", "lllt"])