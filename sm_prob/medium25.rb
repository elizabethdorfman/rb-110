def triangle(int1, int2, int3)
	#equilteral all three numbers are same
	#isoceles two sides are equal length
	#scalene all different
 	if !valid?(int1, int2, int3)
	:invalid
	elsif int1 == int2 && int2 == int3
		:equilateral
	elsif int1 == int2 || int2 == int3 || int1 == int3
		:isosceles
	else
		:scalene
	end
end

def valid? (int1, int2, int3)
	#sum of lengths of two shortest sides > length of longest side
	sides = [int1,int2,int3].sort
	if (sides[0] + sides[1]) <= sides[2]
		return false
	elsif sides[1] <= 0 || sides[0] <= 0 || sides[2] <= 0
		return false
	else
		return true
	end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
