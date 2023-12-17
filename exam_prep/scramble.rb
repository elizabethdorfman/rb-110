# # Complete the function scramble(str1, str2)
# # that returns true if a portion of str1 characters can be
# rearranged to match str2, otherwise returns false.
# Only lower case letters will be used (a-z).
# No punctuation or digits will be included.

=begin
Input: Two strings
Output: Boolean- true if potion of str1 chars can be rearranged to match str2

Rules:
First string is scrambled
Second string should be included in first string to return true

Algorithm:
Iterate through each character of second word
For each character check if it's included then remove it from string
Use .chars.each.all? to check each character is included
inisde the block delete character if it's included then return true
return value of .all is return value for our method
=end
def scramble(string1, string2)
	string2.chars.all? do |char|
		if string1.include?(char)
			string1.sub!("char","")
			true
		else
			false
		end
	end
end


p scramble('katas', 'steak') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true

p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
p scramble("abcdefghijklmnopqrstuvwxyz" * 100_000, "zyxcba" * 90_000) == true