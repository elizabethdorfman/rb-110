def leading_substrings(string)
	accumulator = ""
	array=[]
	for i in string.chars
		accumulator += i
		array.push(accumulator)
	end
	array
end
p leading_substrings('abc')
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
