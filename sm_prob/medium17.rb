def word_to_digit(string)
	hash = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
	hash.keys.each do |word|
		string.gsub!(/#{word}/, hash[word].to_s)
	end
	string
end
p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
