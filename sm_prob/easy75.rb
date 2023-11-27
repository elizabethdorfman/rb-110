def staggered_case(string)
	new_str=''
	string.chars.each_with_index do |char, index|
		new_str << char.upcase if index.even?
		new_str << char.downcase if index.odd?
	end
	new_str
end
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
