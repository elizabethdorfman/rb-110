def reverse!(array)
	#takes the first element and adds it to back
	#takes the second element and adds it to
	counter = 0
	size = array.size/2 if array.size.even?
	size = array.size/2 +1 if array.size.odd?
	while counter < size
		new_in= -counter - 1
		array[new_in], array[counter] = array[counter], array[new_in]
		counter +=1
	end
	array
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]

list = []
p reverse!(list) == []