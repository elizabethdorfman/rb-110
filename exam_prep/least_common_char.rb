=begin
Input: String
Output: Character- occurs least often in string

Rules
- When counting characters return the first one
- When counting character uppercase and lowercase are the same
- Return character that occurs least often

High level approach
- Counting occurence of character
- Return character that occurs least often
- Store least common character in a string variable
- Iterate through each character and check if it's least common

Algorithm
- Initialize a string variable to store least common character
- Initialize an integer variable to store least common count
- Initialize string with all lowercase for counting
- Iterate through each character
	- Check occurence of character in string
	- If occurence is less than least common character count
	- Reassign count and reassign string
	(This will automatically find the first in the string)
end iteration
Return least common character

=end

def least_common_char(string)
	least_common_character = string[0]
	normalized_string = string.downcase
	least_common_count = normalized_string.count(string[0].downcase)
	string.chars.each do |char|
		occurences = normalized_string.count(char.downcase)
		if occurences < least_common_count
			least_common_count = occurences
			least_common_character = char
		end
	end
	least_common_character.downcase
end

# p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
