=begin
Input: array of itnegers
Output: integer- N where sum of integers on the left of N is equal to sum on right of N

rules
- Sum of integers to left of N same as sum of integers to the right of N
- Can work for index 0 or last index empty arrays sum of 0

High level
- Go through each integer and calculate sum to the left and to the right.
- If the sum is the same then return the index

Alogrithm
- Initialize integer to store index N or -1. Initialize to -1 as default.
- Start an iteration loop that starts from 0 and goes up to length of array
		- Get range from 0 to N-1 index and find the sum
		- Get range from N+1 to last index of array and find the sum
		- If they're the same return N index
- Close iteration
- Return n index

=end

def find_even_index(array)
	array.each_with_index do |num, index|
		sum1 = array[0..index-1].reduce{|sum, num| sum + num}
		sum2 = array[index+1..-1].reduce{|sum,num| sum + num}
		if sum1 == sum2
			return index
		end
	end
return -1
end

p find_even_index([1,2,3,4,3,2,1])
p find_even_index([1,100,50,-51,1,1,])
