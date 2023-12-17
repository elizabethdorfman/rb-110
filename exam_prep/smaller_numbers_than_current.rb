=begin
Get an array of numbers. Create a new array of numbers where each number
is the number of numbers smaller than it in the array.
Input: Array of integers
Output: Array of integers

Input [8,1,2,2,3]  --> 8 how many numbers smaller? 1,2,3 --> 3
 --> 1 how many numbers smaller? 0
 --> 2 how many numbers smaller? 1 --> 1
 --> 3 how many numbers smaller? 1, 2, --> 2
 --> 3,0,1,1,2

 Requirements:
 - New array of integers should be same length
 - Each number in integer should correspond to number at same index
 From previous array of integers
- When counting make sure that we're only counting unique numbers

High level:
Iterate through each integer find the number of integers smaller
Add it to a new array that stores the corresponding integer values

How are we going to count number of integers smaller? use a helper method
Inside the helper method: Store number smaller in an integer variable
Create unique array. Iterate throughe each number if it's smaller then
we increment the integer number

Algorithm:
Initialize new output array
Iterate through each integer of original array.
	Use helper method number smaller to get number of integers smaller
	Push smaller number return value to array.
end iteration
Return output array

num_smaller helper method
New array of only unique values in array
Initialize number smaller integer
Iterate through each number of array, If its smaller increment
the number.
end iteration
return the number

=end

def get_smaller(num, array)
	unique_array = array.uniq
	smaller_nums = 0
	unique_array.each do |smaller_num|
		if smaller_num < num
			smaller_nums += 1
		end
	end
	smaller_nums
end

def smaller_numbers_than_current(array)
	output_array = []
	array.each do |num|
		smaller = get_smaller(num, array)
		output_array.push(smaller)
	end
	output_array
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]