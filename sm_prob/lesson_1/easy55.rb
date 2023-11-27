=begin
algorithm
For each character in the string
Check if it's non alphabetical
if it's non alphabetical
	if previous character is space reassign empty string
	else reassign space

challenging part: checking for alphabetical new method
challenging part 2: check if previous case is space by setting boolean after each reassignment
=end


def  cleanup (string)
	string = string.chars
	counter = 0
	space_row = false
	while counter < string.size
		char = string[counter]
		if !char.match(/[A-Za-z]/) && !space_row
			string[counter] = " "
			space_row = true
		elsif char.match(/[A-Za-z]/)
			space_row = false
		elsif !char.match(/[A-Za-z]/) && space_row
			string[counter]=""
		end
		counter += 1
	end
	string.join
end
p cleanup("---what's my +*& line?")
p cleanup("---what's my +*& line?") == ' what s my line '
