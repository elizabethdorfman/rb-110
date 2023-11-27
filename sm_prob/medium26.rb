def triangle(angle1, angle2, angle3)
	sides = [angle1, angle2, angle3]
	case
	when sides.reduce(:+) != 180, angle1 <= 0 || angle2 <= 0 || angle3 <= 0
		:invalid
	when sides.include?(90)
		:right
	when angle1 < 90 && angle2 < 90 && angle3 < 90
		:acute
	when angle1 > 90 || angle2 > 90 || angle30 > 90
		:obtuse
	end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid