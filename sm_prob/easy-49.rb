=begin
algoriithm
- Find the 1s digit and add it to the string
- Find the tens digit and add it to the string
- Continue until all
- Reverse the string
=end
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

p integer_to_string(4321)
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'