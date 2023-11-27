def swapcase(string)
	new_str=""
	string.each_char do |char|
	if char.match(/[a-z]/)
		new_str << char.upcase
	elsif char.match(/[A-Z]/)
		new_str << char.downcase
	else
		new_str << char
	end
end
	new_str
end
p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
