=begin
Input: String
Output: String- transformed

Rules:
- Every 2nd character in ev ery third word converted to uppercase
- Ex. given a string of 9 words.
3rd word 2nd character should be capitalized every 2nd charcter
6th word 2nd character should be capitalized
9th word 2nd character should be capitalized
In the 6th word- 4th character should also be capitalized

Pattern:
Every 3rd word--> word index %3 == 0
Every 2nd character --> character index % 2 == 0
Testing this out...
3rd word %3 == 0 yes. 6th word %3 == 0 yes...
2nc character %2 == 0 yes, 4th character %2 == 0 yes...

Algorithm:
First convert string into array of words.
Iterate through each word.
If the word (index + 1) %3 == 0 (Every third word)
Then Iterate through all the characters.
If the character (index + 1) %2 == 0 (Every second character)
Reassign to capitalized character.
end iterations
Convert the reassigned array of words back into a string.
Return reassigned string.
=end

def to_weird_case(string)
	array_of_words = string.split
	array_of_words.each_with_index do |word, word_index|
		if (word_index + 1) % 3 == 0
			word.chars.each_with_index do |char, char_index|
				if (char_index + 1) % 2 == 0
					word[char_index] = char.upcase
				end
			end
		end
	end
	array_of_words.join(" ")
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'