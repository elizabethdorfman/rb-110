def sum(int)
	string = int.to_s
	sum = 0
	for i in string.chars
		sum += i.to_i
	end
	sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
