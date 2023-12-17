=begin
input: 3x3 matrix in array of arrays format
output: transpose of the oriignal matrix
rules:
- exchanging columns and rows of matrix
- first row becomes first column etc.
- works for empty matrix, 1 row size, 2 row size, 3 row size, 4 row size etc.
high level
- create a new matrix and iterate through each element of old matrix and add it into new
data structure
- array of arrays for input and for new matrix
algorithm
- iterate through each row and column with a each with index
- Invert indices and add it to new array
=end

def transpose(array)
	new_array = Array.new(3){Array.new(3)}
	row = 0
	column = 0
	if array[0].size > 1
		array.each_with_index do |row, row_index|
			row.each_with_index do |element, col_index|
				new_array[col_index][row_index] = element
		end
	end
end
	new_array
end

matrix = [ [1, 5, 8], [4, 7, 2], [3, 9, 6] ]
p transpose(matrix)