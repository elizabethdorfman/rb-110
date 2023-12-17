=begin
Input: Array of integers
Output: Integer, maximum sum of array of integers

Rules:
If the array is made up of only negative numbers return 0
Find section of array with maximum sum
Minimum length of a section is 1 integer
Maximum length of a section is the whole array

Algorithm:
Initialize sum variable to 0
Initialize variable storing legnth of array

1st go through each item of array range index for 1
take sum
if maximum sum assign to sum varaibel
2nd go through item of array range index for 2
go through each item of array range index for 3
up until we reach last item of array

Iterate through each number 1 up to length of array (subarray size)
Iterate through each item of array (range indexing)
Progressively add 1 to size of subarray
Range index array to size of subarray as long as last index is less than length of array
Take sum
if maximum sum assign to sum variable
end iterations
return sum variable
=end

def max_sequence(array)
	sum = 0
	length = array.length
	1.upto(length) do |sublength|
		array.each_with_index do | starting_num, starting_index|
			if starting_index + sublength <= length
				subarray = array[starting_index,sublength]
				new_sum = subarray.reduce(0){|sum,num| num + sum}
				if new_sum > sum
					sum = new_sum
				end
			end
		end
	end
	sum
end

p max_sequence([11])
p max_sequence([-32])
p max_sequence([-2,1,-3,4,-1,2,1,-5,4])
p max_sequence([-2,1,-7,5,-10,2,1,5,4])