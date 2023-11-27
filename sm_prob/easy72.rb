def letter_case_count(string)
	lowercase= string.count("a-z")
	uppercase= string.count("A-Z")
	neither= string.count("^a-zA-Z")
	hash = {lowercase: lowercase, uppercase: uppercase, neither: neither}
end
p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
