=begin
input: array of strings
output: array of characters  where each character has shown up in each string
rules:
character needs to show up in each string
character can show up multiple times in each string still counted once

algorithm:
Initialize output array.
iterate through each letter of first word.
Use an iterator variable like each
	Check if the letter is included in each string.
	How? .all? to check if all items of array include the letter
	If it does we add it to output array with .push
end iterating through lettrs of first word
return array variable
=end

def common_chars(array)
	output_array = []
	array.first.chars.each do |char|
		if array.all?{|string| string.include?(char)}
			output_array.push(char)
		end
	end
	output_array
end

p common_chars(['bella', 'label', 'roller'])