=begin
input: string with one or more space speerated words
output: hash that shows number of words of different sizes
requirements:
- Key of hash is length of words
- Value of hash is number of occurences of length
algrithm
- split string into words
- Take length of each word
	- if length is a key in the hash add 1 to value
	- if length is not a key in the hash and key with 1
=end

def word_sizes(string)
	words = string.split()
	hash = {}
	for i in words
		i.gsub(/[^a-zA-Z]/,'')
		if hash.key?(i.size)
			hash[i.size] += 1
		else
			hash[i.size] = 1
		end
	end
	hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}