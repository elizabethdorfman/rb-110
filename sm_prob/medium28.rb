require 'pry'
def featured(num)
	num += 1
	loop do
		if num.odd? && num % 7 == 0 && num.to_s.chars == num.to_s.chars.uniq
			return num
		elsif num.to_s.chars.size > 10 || ('0'..'9').all? {|digit| num.to_s.include?(digit)}
			return "error"
		else
			num += 1
		end
	end
end
p featured(21)
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
