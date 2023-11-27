def halvsies(array)
	arr1 = []
	arr2=[]
	arr3=[]

	if array.size.odd?
		size = array.size/2 +1
	else
		size = array.size/2
	end

	array.each_with_index do |num,index|
		arr1 << num if index < size
		arr2 << num if index >= size
	end

	arr3 << arr1
	arr3 << arr2
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]