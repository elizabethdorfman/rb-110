def bubble_sort!(array)
	#compare each pair of elements
	size = array.size
	loop do
		index1 = 0
		index2 = 1
		complete = true
		while index2 < size
			if array[index1] > array[index2]
				temp = array[index1]
				array[index1] = array[index2]
				array[index2] = temp
				complete = false
			end
			index1 += 1
			index2 +=1
		end

	break if complete
	size = size-1
	end
array
end

array = [5, 3]
bubble_sort!(array)
p array

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
