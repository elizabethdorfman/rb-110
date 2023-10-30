def digit_list(num)
	num.to_s.split("").map{|num| num.to_i}
end

p digit_list(12345)
puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]