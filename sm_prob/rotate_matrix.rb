=begin
input: array of arrays matrix
output: array of arrays same matrix rotated 90 degrees
rules
- old rows number is new columns number and vice versa
high level
- last row first column becomes first row first column
- second last row first column becomes second row
- last column first row becomes last column last row
Algorithm
	Create new matrix with new size rows and column numbers switched
	Use counter variables to iterate through.
	Start with first row add it to last column
	row 0, col index => col index, biggest column
	Second row add it to second last column
	row 1, col index => col index, second biggest column

=end
def rotate90(matrix)
	rows = matrix.count
	columns = matrix[0].count
	new_matrix = Array.new(columns){Array.new(rows)}
	col = columns - 1
	row.each_with_index do |row, index|

	end
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
new_matrix1 = rotate90(matrix1)