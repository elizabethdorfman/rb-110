def buy_fruit(array)
	output=[]
	array.each do |in_arr|
		in_arr[1].times{ output << in_arr[0] }
	end
output
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])