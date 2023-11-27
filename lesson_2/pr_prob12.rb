arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hash ={}
arr.each do |in_arr|
	key = in_arr[0]
	value = in_arr[1]
	hash[key] = value
end
p hash