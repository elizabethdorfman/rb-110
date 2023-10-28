
def running_total (arr)
	new_arr = []
	total = 0
	for num in arr
		total +=num
		new_arr << total
	end
	new_arr
end

p running_total([2, 5, 13])
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []