=begin
Input: Reads in text from a file
Output: Prints transformed version of text file
Requirements:
Have an array of adjectives, nouns, adverbs and verbs to replace
Input should have space to replace nouns adverbs and verbs and be labelled
with %{verb} format.
Data structures:
arrays for swapped words
algorithm:
Iterate through array and swap words
Conditional statements in iteration for each type of word
.sample for swapping word and .gsub for
=end

def mad_libs(file)
	read = File.read(file)
	adjectives = %w(quick lazy sleepy ugly)
	nouns = %w(fox dog head leg)
	verbs = %w(jumps lifts bites licks)
	adverbs = %w(easily lazily noisily excitedly)
	new = read.split(" ").map do |word|
		word2 = word.gsub(",","")
		if word2 == "%{adjective}"
			adjectives.sample()
		elsif word2 == "%{noun}"
			nouns.sample()
		elsif word2 == "%{verb}"
			verbs.sample()
		elsif word2 == "%{adverb}"
			adverbs.sample()
		else
			word
		end
	end
	puts new.join(" ")
end

file_path = "mad_libs.txt"
mad_libs(file_path)