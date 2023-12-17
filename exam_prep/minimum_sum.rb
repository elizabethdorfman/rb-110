=begin
Input: Array of integers
Output: Integer- Minimum sum of 5 consecutive numbers or nil

Rules
- If the array contains fewer than 5 elements the method should return nil
- Otherwise find the 5 consecutive numbers with the minimum sum
- Return minimum sum of 5 consectuive numbers

High level
- Check if it has 5 integers if not return nil

- Approach 1- iterate through each piece/ call it substring of the array
take the sum of each substring and put it into an array
Find the minimum number of the array and return it

Approach 3- We know the length of the substring. Iterate through each number.
Range index an array of length 5 starting from each number.
Find the sum of this new array
Add it to an array of sums
Find the minimum number of the array and return it.

Algorithm:
Check if it has 5 integers if not return nil
Initialize array of sums
Iterate through each number
Range index an array of length 5 starting from each number.
Make sure that the first element of the range index  + 5 is less than
length of array
Find the sum of this range array we've indexed.
Add sum to array of sums
End iteration
Return minimum number in array
=end

def minimum_sum(array)
	if array.length < 5
		return nil
	end
	array_of_sums = []
	array.each_with_index do |num, index|
		if index + 5 < array.length
			sum = array[index,5].reduce{|sum, num| sum + num}
			array_of_sums.push(sum)
		end
	end
	array_of_sums.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10