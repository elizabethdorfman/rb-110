DIGITS = {
	1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
	6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(int)
	digits_arr = int.digits.reverse
	digits_arr = digits_arr.map{|key| DIGITS[key]}
	output = ''
	digits_arr.each{|str| output += str}
	output
end

def signed_integer_to_string(int)
	case int <=> 0
	when -1
		int = -int
		string = integer_to_string(int)
		string.prepend('-')
	when +1
		string = integer_to_string(int)
		string.prepend('+')
	when 0
		string = '0'
	end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'