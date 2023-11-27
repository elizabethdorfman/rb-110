def sum_square_difference(int)
	sum1 = 0
	1.upto(int){|i| sum1 +=i }
	sum1 **= 2

	sum2 = 0
	1.upto(int){|i| sum2 += i**2 }

	sum1 - sum2
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
