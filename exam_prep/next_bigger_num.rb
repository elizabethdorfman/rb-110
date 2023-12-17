=begin
Input: Integer - positive integer number
Output: Integer= next bigger number formed by same digits

Rules:
Rearranging digits
No additional digits none taken away
Next bigger number meaning number rearranged that's bigger but smallest
Returns -1 if no options

Alogrithm:
Option 1-
Count up
Check if each number satisfies requirement: bigger and same digits

Start a loop
iterate through each number from first number + 1
break and return num if it has same digits
if there are more digits in the returned_Num then num then break

Same digits function or inside
Store a string with sorted digits
take the integer convert to string and sort the digits
compare if it's the same return true.

=end

def next_bigger_num(num)
	returned_num = num + 1
	loop do
		if same_digits(num, returned_num)
			return returned_num
			break
		elsif returned_num.to_s.length > num.to_s.length
			return -1
			break
		else
			returned_num += 1
		end
	end
end

def same_digits(num, returned_num)
	sorted = num.to_s.chars.sort.join
	sorted_2 = returned_num.to_s.chars.sort.join
	sorted == sorted_2
end

p next_bigger_num(12)
p next_bigger_num(513)
p next_bigger_num(111)