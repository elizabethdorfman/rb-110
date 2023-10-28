statement = "The Flintstones Rock"
#Iterate through checks if letter is a key if it's not add it as a key to 1 if it is increment value
hash ={}
for i in statement.chars
	if hash.key?(i)
		hash[i] +=1
	else
		hash[i] = 1
	end
end
puts hash