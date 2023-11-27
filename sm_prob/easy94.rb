def word_lengths(string)
	words = string.split
	words.each do |word|
		size = word.size.to_s
		word << " " << size
	end
end

p word_lengths("cow sheep chicken")
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]