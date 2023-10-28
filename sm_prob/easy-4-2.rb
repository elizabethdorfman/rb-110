=begin
input- year
output- string that begins with century number and ends with st, nd, rd or th

Explicit, Implicit requirements
- Calculates century of given year
- Converts calculation of century into appropriate suffix word
- suffixes:
- Ending in 1 except for 11 st
- Ending in 2 except for 12 nd
- Ending in 3 except for 13 rd
- everything else is th
- empty is error

Test cases
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Algorithm/ data structure
Use an integer to calculate the century
Use a string to record the result

0. Return error if input isn't an integer
1. Calculate the century in a century variable by dividing input by 100
2. If the modulo of /100 is 1 then append to result string with st
3. If the modulo of of /100 is 2 then append to result string with nd
4. If the modulo of /100 is 3 then append to result string with rd
5. Or else append to result string with th
6. Return the result string
=end

def century(year)
	return "Error" if year.integer? == false
	result = ''

	if year %100 == 0
		century = year /100
	else
		century = year/100 +1
	end

	century.to_s + century_suffix(century)
end

def century_suffix(century)
	return 'th' if [11,12,13].include?(century%100)
	last_digit = century%10
	case last_digit
	when 1 then "st"
	when 2 then 'nd'
	when 3 then 'rd'
	else 'th'
	end
end

p century(2000) == '20th'
p century(2001)
p century(1965)
p century(256)
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'