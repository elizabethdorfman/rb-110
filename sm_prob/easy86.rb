def repeater(string)
	counter = 0
	result = ""
	while counter < string.size
		result << string[counter]*2
		counter += 1
	end
	result
end
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
