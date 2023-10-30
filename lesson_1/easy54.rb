=begin
input: string of words seperated by spaces
output: string in which first and last letters of every word are swapped
requirements
- swap first and last letter
- swap letters for each word
- If only one letter doesn't swap anything
Algorithm
- iterate through each word
- for each word store the first letter and store the last letters in string variables
- Reassign the first and last letter
=end

def swap(string)
	arr = string.split
	for word in arr
		next if word.size<2
		word[0], word [-1] = word[-1], word [0]
	end
	arr.join(" ")
end
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
