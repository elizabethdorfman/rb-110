=begin
Input: String
Output: Integer- length of largest palindrome in string

Rules:
If the length of the input string is 0 return value must be 0
If the length is 1 , return value is 1
Palindrome means same in reverse
assume case senstive is okay

High level:
Find all the substring combinations and test if it's a palindrome
If it is a palindrome we find the length and store it as our max palindrome

Algorithm:
Initialize variable to store max palindrome integer starts at 0
Iterate through all substrings of increasing size
	starting at size 1 up to length of string iteration
	each with index iteration through each character of string
	Range indexing substring. check that range doesn't exceed length
	if it's a plindrome reassign max palindrome to substring size

Helper method called ispalindrome? that tests substrings for palindrome
returns if reverse is equal to string


=end

def ispalindrome?(string)
	string == string.reverse
end

def longest_palindrome(string)
	max_palindrome = 0
	1.upto(string.length) do |substring_length|
		string.chars.each_with_index do |char, starting_index|
			if starting_index + substring_length <= string.length
				substring = string[starting_index, substring_length]
				if ispalindrome?(substring)
					max_palindrome = substring.length
				end
			end
		end
	end
	max_palindrome
end


p longest_palindrome('a')
p longest_palindrome("aa")
p longest_palindrome("baa")
p longest_palindrome("baabcd")