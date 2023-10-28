=begin
input- two strings as arguments
output- concatenated string
requirements:
- finds the shorter and longer string
- concatenates the shorter string with the longer string and with the shorter string agin
- Empty string is considred shorter string
#Test cases
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
#Algorithm data structure
data structure output- new string variable
1. Initializes new string local variable with result
2. Compare length of two strings
3. Store smaller string in smaller string variable and larger string in largeter string variables
4. Add to rresult string
=end

def short_long_short (string1, string2)
	result=''
	if string1.size < string2.size
		smaller_string = string1
		larger_string = string2
	else
		smaller_string = string2
		larger_string = string1
	end
	result = smaller_string + larger_string + smaller_string
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"