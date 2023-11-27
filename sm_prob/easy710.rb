def count_occurrences(array)
	hash = {}
	array.each do |word|
		if hash.key?(word)
			hash[word] += 1
		else
			hash[word] = 1
		end
	end
	hash.each{|key,value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)