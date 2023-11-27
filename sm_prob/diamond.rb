def diamond(n)
	num_x = 1
	is_up = true
	n.times do |index|
		print_line(num_x,n)
		if num_x == n
			is_up = false
			num_x -= 2
		elsif is_up
			num_x += 2
		else
			num_x -=2
		end
	end
end

def print_line(num_x, n)
	num_spaces = (n-num_x)/ 2
	line = " "*num_spaces + "*" *num_x + " "*num_spaces
	puts line
end

diamond(5)
diamond(9)