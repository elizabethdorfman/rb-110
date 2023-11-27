=begin
n number of rows
first and last row is always 1
middle row n/2+1 is always n
each row is + 2 or -2 from previous

algorithm
array of stars for each row

=end
def diamond(n)
	num_x = 1
	is_up = true;
	n.times do |num|
		print_line(n,num_x)
		if num_x >= n
			is_up = false
		end
		if is_up
			num_x += 2
		else
			num_x -= 2
		end
	end
end

def print_line(n, num_x)
	front_spaces = (n-num_x)/2
	if num_x == 1
		middle_spaces = 0
		middle = "*"
	else
		middle_spaces = n-(2*front_spaces)-2
		middle = "*" + " "*middle_spaces + "*"
	end
	line = ""
	line += " "*front_spaces
	line += middle
	line += " "*front_spaces
	puts line
end

diamond(5)
diamond(9)