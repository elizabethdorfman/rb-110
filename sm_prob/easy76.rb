def show_multiplicative_average(array)
	output = 1.0
	array.each{|num|output *= num}#multiply numbers
	output = output/array.size#divide result by number of entries
	puts "The result is #{format('%.3f', average)}" #print result rounded to 3 decimal palces
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
