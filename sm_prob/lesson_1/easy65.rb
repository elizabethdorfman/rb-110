def reverse(arr)
	new_arr = []
	index = arr.size - 1
	while index >= 0
		new_arr.push(arr[index])
		index -= 1
	end
	new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true
