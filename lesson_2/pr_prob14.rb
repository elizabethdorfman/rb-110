hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
arr=[]
hsh.each do |key,details|
	output = ""
	if details[:type] == "fruit"
		output = details[:colors].map(&:capitalize)
	elsif details[:type] == "vegetable"
		output = details[:size].upcase
	end
	arr.push(output)
end
p arr