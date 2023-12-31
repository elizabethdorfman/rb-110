 def twice(int)
	middle = int.to_s.size/2
	string = int.to_s
	if string.size == 2 && string[0] == string[1]
		return int
	elsif string.size > 2 && string[0.. middle - 1] == string[middle..-1]
		return int
	else
		return int*2
	end
 end


 p twice(37) == 74
 p twice(44)
 p twice(44) == 44
 p twice(334433) == 668866
 p twice(444) == 888
 p twice(107) == 214
 p twice(103103)
 p twice(103103) == 103103
 p twice(3333) == 3333
 p twice(7676) == 7676
 p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
 p twice(5) == 10