# 1 1 2 3 5 8
def fibonacci(n)
	if n <= 2
		1
	else
		fibonacci(n-1) + fibonacci(n-2)
	end
end

p fibonacci(4)
p fibonacci(5)
p fibonacci(12)