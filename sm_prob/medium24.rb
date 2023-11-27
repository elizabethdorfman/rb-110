def balanced?(string)
	#add each parantheses to an array
	#check if the paranthese to index-1 of a ) is ( unless it's at index 0
	#delete both parantheses
	#if it's not at index 0 and it's not a ( then return false
	parantheses = []
	string.chars.each do |char|
		if char == ")" || char =="("
			parantheses.push(char)
		end
	end

	loop do
	c_index = -1
	parantheses.each_with_index do |char, index|
		if char == ")" && c_index == -1
			c_index = index
		end
	end

		if parantheses.empty?
			return true
		elsif c_index == 0 || c_index == -1
			return false
		elsif parantheses[c_index-1] == "("
			parantheses.delete_at(c_index)
			parantheses.delete_at(c_index-1)
			c_index -= 1
		elsif parantheses[c_index-1] == ")"
			return false
		end
	end

end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
