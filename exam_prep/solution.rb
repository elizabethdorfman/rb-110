=begin

Algorithm
Initialize count variable for string 2 in string 1

Initialize length of substring variable
Iterate through each char of string with index
Range index  starting from char substring that's length of string
Add substring to array of substrings

Iterate through each substring in array of substrings
If the substring is a match then increment count variable
end iteration

Return count

=end

def solution(string, char)
	second_last_occurence = string.count(char) - 1
	counter = 0
	string.chars.each_with_index do |char2, index|
		if char2 == char
			counter += 1
		end
		if counter == second_last_occurence
			return index
		end
	end
end

p solution("heello", "e")