=begin
input: word to check if it can be spelt from blocks
output: true if it can be false otherwise
requirements:
- Each word can only have one letter from each block
- If it has two letters from each block return false
- If it has less than two letters from each block return true
- Check each block to make sure it passes
algorithm
- store blocks as nested array
- check if both letters in nested array are included inside word
- convert word to an array to easier check include
=end
require "pry"
BLOCKS = [ ["B",'O'], ['X','K'], ['D','Q'], ['C','P'],
						['N','A'], ['G','T'], ['R','E'], ['F','S'], ['J','W'],
						['H','U'], ['V','I'], ['L','Y'], ['Z','M'] ]
def block_word?(word)
	word = word.upcase.split("")
	bool = true
	BLOCKS.each do |block|
		if word.include?(block[0]) && word.include?(block[1])
			bool = false
		end
	end
	bool
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest') == true
