=begin
Input: Array of integers
Output: Array of two integers- Two integers selected in array.

Rules:
- Two numbers that are closest together in value
- Closest together meaning smallest difference
Ex. 15,11 --> 4 closer together
than 20,15 --> 5 apart

High level approach
- Sort the array
- Find the difference between each numbers that are beside each other
- How to find the smallest difference? Use a hash?
- Add each set of arrays into a hash {[num1, num2] => difference}
- Find the minimum hash value helper method.

Algorithm:
Initialize hash to store sets of arrays with difference.
Find each permutation
Iterate through each num
	From first num up to 2nd last (index must be <= second last)
	Add each num along with next num in array as array into hash as key
	Calculate  difference
	Add difference as value of hash
Find pair with minimum value. sort the hash
Find the correct order for test cases according to array

Correct order algorithm.
Go through each item of the array and look for two integers
If we find the second integer first then reverse the pair array.

=end


def correct_order(pair, array)
	array.each do |num|
		if num == pair.first
			return pair
		elsif num == pair[1]
			return pair.reverse
		end
	end
end

def closest_numbers2(array)
	difference_hash = {}
	sorted_array = array.sort
	sorted_array.each_with_index do |num, index|
		if index <= array.length - 2
			array_to_add = [num, sorted_array[index + 1]]
			difference = sorted_array[index + 1] - num
			difference_hash[array_to_add] = difference
		end
	end
	difference_hash = difference_hash.sort_by{|key,value| value}
	pair = difference_hash[0][0]
	correct_order(pair, array)
end

def closest_numbers(array)
	combos = array.permutation(2).to_a
	min_diff = (combos[0][0]- combos[0][1]).abs
	min_keys = [combos[0][0], combos[0][1] ]

	combos.each do |combo|
		diff = (combo[0]- combo[1]).abs
		if diff < min_diff
			min_diff = diff
			min_keys = combo
		end
	end
	min_keys
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
