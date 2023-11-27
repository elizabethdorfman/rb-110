
def remove_vowels (array_of_strings)
	for i in array_of_strings
		counter = 0
		while counter < i.size
			if i[counter].match(/[aeiouAEIOU]/)
				i[counter] = ""
				counter -=1
			end
			counter +=1
		end
	end
	array_of_strings
end
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
