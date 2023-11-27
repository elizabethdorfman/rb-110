
=begin
algorithm
1.read in the text and store it
2. seperate the text into arrays where each element is a sentence
3. seperate each item of array into words nested array
4. count items in each array and store the longest
5. takes the longest array and combines it back into a sentence then prints it

=end
def longest_sentence(file)
	file_content = File.read(file)
	sentences = file_content.split(/[.!?]/)
	sentences.map! { |sentences| sentences.split(" ") }
	largest = sentences.max_by{|arr| arr.length}
	size = largest.size
	p size
	p largest.join(" ")
end
file = 'pg84.txt'
longest_sentence(file)