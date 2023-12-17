=begin

=end
require "pry"
def transpose(array)
	rows = array.count
	columns = array[0].count
	new_array = Array.new(columns){Array.new(rows)}
	row = 0
	column = 0
	if array[0].size >= 1
		array.each_with_index do |row, row_index|
			row.each_with_index do |element, col_index|
				new_array[col_index][row_index] = element
			end
		end
	else
		new_array[0] = array[0]
	end
	new_array
end
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
=end