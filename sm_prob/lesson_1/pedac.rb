=begin

input: Even number
output: Even number- sum of row
Implicit requirements:
- Creates rows
- Each row is the length of it's row number
- Each row starts with the previous last


=end

def sum_even_number_row (row_number)
	rows =[]
	start_integer = 2
	(1..row_number).each do |current_row_number|
		rows << create_row(start_integer,current_row_number)
		start_integer =rows.last.last+2
	end
	final_row_sum= 0
	rows.last.each{|num| final_row_sum += num}
	final_row_sum
end

def create_row(start_integer, row_length)
	row = []
	current_integer = start_integer
	loop do
		row <<current_integer
		current_integer += 2
		break if row.length == row_length
	end
	row
end


p sum_even_number_row(1)
p sum_even_number_row(2)
p sum_even_number_row(3)



p sum_even_number_row(1) == 2
p sum_even_number_row(2) == 10
p sum_even_number_row(3) == 30


p create_row(2,1) == [2]
p create_row(4,2) == [4,6]
p create_row(8,3) == [8,10,12]