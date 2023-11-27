def letter_percentages(string)
	size = string.size
	lowercase = string.count("a-z").to_f / size * 100
	uppercase = string.count("A-Z").to_f / size * 100
	neither = (string.count("^a-zA-Z").to_f / size * 100).round(1)
	hash = {lowercase: lowercase, uppercase: uppercase, neither: neither}
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')