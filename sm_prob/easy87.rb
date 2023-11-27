def double_consonants(string)
	result = ""
	string.each_char do|char|
		if char.match(/[A-Za-z]/) && char.match(/[^aeiouAEIOU]/)
			result << char*2
		else
			result<<char
		end
	end
	result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants('') == ""
