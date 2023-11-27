=begin
input: n for nxn star grid
output: star on nxn star grid printed out
requirements:
Middle most row always has n * "*" output
Middle + 1 and -1 always has (n-3)/2 spaces, 3 stars, (n-3)/2 spaces
Keep going + 1 and adding spaces until (n-1)/2 rows above and below middle
Algoirthm:
Store array with row variables to print out each index correspondign to row
start by assigning middle row output and adding it to array
Then assign middle + 1 row # output and middle -1 row # output and add to array
Keep adding and subtracting one to row number until reach row number middle + (n-1)/2
For each new row add a space between three stars
=end
def star(num)
	rows = []
	1.upto(num).each{ |num|rows.push(num)}
	middle_index = (num+1)/2 - 1
	middle = "*" * num
	rows[middle_index] = middle
	index = middle_index + 1
	spacer = 0
	while index < num
		front= " " * ((num-(3+spacer*2))/2)
		middle = "*" + " "*spacer + "*" + " "*spacer + "*"
		back = " " * ((num-(3+spacer*2))/2)
		row = front + middle + back
		spacer += 1
		index += 1
		rows[middle_index+spacer] = row
		rows[middle_index-spacer] = row
	end
	rows.each{|row| puts row}
end
star(5)