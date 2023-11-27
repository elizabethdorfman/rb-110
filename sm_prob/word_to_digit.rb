def word_to_digit(string)
	hash = {"one"=>1, "two" => 2, "three" => 3, "four" => 4, "five" =>5}
	hash.each do |key,value|
		string = string.gsub(key, value.to_s)
	end
	string
	#iterate through each string number
	#if the string number is in the string then subsititute
	#Substitute by putting hash[word] as substitution value
end
p word_to_digit('Please call me at five five five one two three four. Thanks.')