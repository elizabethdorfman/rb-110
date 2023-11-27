def word_sizes(string)
	words = string.split()
	hash = {}
	for i in words
		i= i.gsub(/[^a-zA-Z]/,'')
		if hash.key?(i.size)
			hash[i.size] += 1
		else
			hash[i.size] = 1
		end
	end
	hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}