#returns index of fibonacci sequence
=begin
basic algorithm for fibonacci:
fibonacci_arr = []
fibonacci_arr << 1
fibonacci_arr << 1
loop do
	fibonacci_arr << (fibonacci_arr [fibonacci_arr.size - 1] + fibonacci_arr [fibonacci_arr.size - 2])
=end
def find_fibonacci_index_by_length(int)
	fibonacci_arr = []
	fibonacci_arr << 1
	fibonacci_arr << 1
	loop do
		last_index = fibonacci_arr.size - 1
		sum = fibonacci_arr [last_index] + fibonacci_arr [last_index-1]
		fibonacci_arr << sum
		break if fibonacci_arr[last_index].digits.size >= int
	end
	fibonacci_arr.size - 1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10000) == 47847
