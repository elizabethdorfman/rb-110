def fibonacci(n)
	array = []
	until array.size == n
		if array.size < 2
			array.push(1)
		else
			array.push(array[-1] + array[-2])
		end
	end
	array[-1]
end

p fibonacci(20)
fibonacci(100) == 354224848179261915075
