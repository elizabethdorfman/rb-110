=begin
input: string
output: true or false if it can be constructed with a substring

rules:
Need to test each substring whose length is a factor of string length
Ex. 3 is a factor of 9, 4 is not a factor of 9, test all substrings that are factors

Algorithm
Initialize string length varaible
Initialize length of substring variable starting at 1
Iterate through each substring whose length is a factor of string length
	AKA string % string lenght == 0
	Find substring by range indexing first index to factor-1
	Add to multiple string Multiply substring by string length / substring length
	Compare multiple string with string if true return true
end iterable
return false
=end

def repeated_substring_pattern (string)
	string_length = string.length
	substring_length = 1
	loop do
		if string_length % substring_length == 0
			substring = string[0..substring_length-1]
			multiple = substring * (string_length/substring_length)
			if multiple == string
				return true
			end
		end
		break if substring_length >= string.length/2
		substring_length += 1
	end
	false
end

p repeated_substring_pattern("abab")
p repeated_substring_pattern("aba")
p repeated_substring_pattern("abaababaab")