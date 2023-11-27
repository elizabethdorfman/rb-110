def fibonacci(n)
	array = []
	until array.size == n
		if array.size < 2
			array.push(1)
		else
			array.push((array[-1] + array[-2])%10)
		end
	end
	array[-1]
end

def fibonacci_last(n)
	fibonacci(n).to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
