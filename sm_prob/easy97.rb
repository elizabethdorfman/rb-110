def get_grade(int1, int2, int3)
	average = (int1 + int2 + int3) / 3
	puts average
	if average >= 90 && average <= 100
		grade = 'A'
	elsif average >= 80 && average < 90
		grade = 'B'
	elsif average >= 70 && average < 80
		grade = 'C'
	elsif average >= 60 && average < 70
		grade = 'D'
	elsif average >= 0 && average < 60
		grade = 'F'
	end
	grade
	end

	p get_grade(95, 90, 93)
	p get_grade(95, 90, 93) == "A"
