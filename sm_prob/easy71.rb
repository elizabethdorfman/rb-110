def interleave(array1, array2)
	output=[]
	counter=0
	loop do
		output << array1[counter] if counter < array1.size
		output << array2[counter] if counter < array2.size
		counter += 1
	break if counter >= array1.size && counter >= array2.size
	end
	output
end
p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
