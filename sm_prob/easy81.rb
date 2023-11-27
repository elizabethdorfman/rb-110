def sum_of_sums(array)
	counter = 0
	sum = 0
	temp_sum=0
	while counter < array.size
		array[0..counter].each{|num|temp_sum += num}
		sum += temp_sum
		temp_sum = 0
		counter +=1
	end
	sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
