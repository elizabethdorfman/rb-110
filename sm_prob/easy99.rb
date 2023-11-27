def anagram(array)
	#Sort characters and put them into word
	sorted = array.map{|word|word.split("").sort.join("")}
	#Add sorted words to hash with regular words
	hash = {}
	sorted.each_with_index do |word, index|
		if hash.key?(word)
			hash[word].push(array[index])
		else
			hash[word]=[array[index]]
		end
	end
	values = hash.values
	values.each{|array| p array}
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagram(words)