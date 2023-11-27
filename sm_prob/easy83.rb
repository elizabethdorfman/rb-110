def leading_substrings(string)
	accumulator = ""
	array=[]
	for i in string.chars
		accumulator += i
		array.push(accumulator)
	end
	array
end

=begin
algorithm
iterate through
=end
def substrings(string)
	arr = []
	counter = 0
	last_ind = string.size-1
	while counter < string.size
		string2 = string[counter..last_ind]
		arr << leading_substrings(string2)
		counter += 1
	end
	arr.flatten
end

p substrings('abcde')