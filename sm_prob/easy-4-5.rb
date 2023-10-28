=begin
input: integer
output: integer sum of multiples
requirements:
- search for all multiples of 3 or 5 that lie between 1 and given number
- compute sum of searched multiples
- only include multiple of both 3 and 5 once

Algorithm:
- Create sum integer to add multiples to
- Go through each number from 1 up to entered number
- If the number is a multiple of 3 or 5 add it to the array
- Add it to the sum integer
- Return the sum integer when finsihed iterating

=end

def multisum (num)
	sum = 0
	count = 1
	while count <= num
		if count % 3 == 0 || count % 5 == 0
			sum += count
		end
		count += 1
	end
	sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168