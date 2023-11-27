def multiply_list(arr1, arr2)
	d = arr1.zip(arr2).map{|arr| arr[0]*arr[1]}
end

p multiply_list([3, 5, 7], [9, 10, 11])
