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

def palindromes(string)
	arr = substrings(string).select{|subs| subs.size > 1}
	arr2 = []
	for i in arr
		if i == i.reverse
			arr2.push(i)
		end
	end
	arr2
end
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]