def sequence(count, first)
	a = []
	num = first
	count.times do
		a.push(num)
		num += first
	end
	a
end
p sequence(5, 1)
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
