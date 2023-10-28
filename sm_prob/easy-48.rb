=begin
input: string of digits
output: appropriate number as integr
requirements
- leading + or - sing is converted
algorithm
- Use a hash to store the string and corresponding integer values
- check and store if the first digit is positive or negative
- reassign first digit to an empty string
-
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer('string')
	if string[0] == "+"
		positive = true
		string[0]= ''
	elsif string[0] == '-'
		positive = false
		string[0] = ''
	else
		positive = true

	digits = string.chars.map {|key| DIGITS[key]}
	value = 0
	digits.each {|digit| value = value * 10 + digit}
	if !positive
		value = -value
	end
	value
end