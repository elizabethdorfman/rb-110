=begin
Input:string of numeric characters
Output: integer conversion of numeric characters
Algorithm:
- Iterates through each character of the string starting from the last
- For each character of the string check which string integer it is
- Mutiply by 10**index from left to right
- Add it to sum integer variable
=end
def string_to_integer2(string)
	index = string.size-1
	tens = 1
	result = 0
	while index>=0
		number = 0
		if string[index] == '1'
			number = 1
		elsif string[index] == '2'
			number = 2
		elsif string[index] == '3'
			number = 3
		elsif string[index] == '4'
			number = 4
		elsif string[index] == '5'
			number =5
		elsif string[index] == '6'
			number =6
		elsif string[index] == '7'
			number =7
		elsif string[index] == '8'
			number =8
		elsif string[index] == '9'
			number =9
		elsif string[index] == '0'
			number =0
		else
			return "error"
		end

		result += number * tens
		tens *=10
		index-=1
	end
	result
end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}
def string_to_integer(string)
	digits = string.chars.map { |char| DIGITS[char] }
	value = 0
	digits.each do |digit|
		value = 10 * value + digit
	end
  value
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570