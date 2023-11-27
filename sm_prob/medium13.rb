require 'pry'
def rotate_array (array)
	first = array.shift()
	array.push(first)
end
def rotate_rightmost_digits(number, digits)
	all_digits = number.to_s.chars
	all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
	all_digits.join-to_i
end
def max_rotation(int)
	all_digits = int.to_s.chars
	counter = 0
	while counter < all_digits.size - 1
		p all_digits
		all_digits[counter, all_digits.size] = rotate_array (all_digits[counter, all_digits.size])
		counter += 1
	end
	if all_digits[0] == 0
		all_digits.shift()
	end
	all_digits.join.to_i
	#loop each index of array up until the last
	#rotate starting from each index
	#drop leading zero
end

p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15