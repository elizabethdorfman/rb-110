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

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3)
=begin
rotate_rightmost_digits(735291, 2) == 735219
 rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
=end