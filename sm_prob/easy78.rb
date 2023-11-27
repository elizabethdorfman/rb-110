def multiply_all_pairs(arr1, arr2)
	new_arr=[]
	for i in arr1
		for n in arr2
			new_arr << i * n
		end
	end
	new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
