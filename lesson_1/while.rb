def multiply (arr, transformation)
	counter = 0
	multiplied_numbers=[]
	loop do
		break if counter == arr.size
		current= arr[counter]
		current *= transformation
		multiplied_numbers << current
		counter +=1
	end
	multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
