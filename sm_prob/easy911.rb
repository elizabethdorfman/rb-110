def oddities(array)
	new_arr=[]
	array.each_with_index{|num, index| new_arr << num if (index+1).odd?}
	new_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
