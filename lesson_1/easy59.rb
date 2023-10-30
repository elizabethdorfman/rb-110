=begin
algorithm
iterate through each char of string
append char to new string
loop
check if the next char is the same as this one
if it is then next
break when next char is different
=end
def crunch (string)
	new_string = ""
	chars = string.chars
	counter = 0
	while counter < chars.size
		new_string << chars[counter]
		loop do
			break if chars[counter+1] != chars[counter]
			counter +=1
		end
		counter += 1
	end
	new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''