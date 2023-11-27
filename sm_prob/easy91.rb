def greetings(array, hash)
	name = array.join(" ")
	title = hash[:title]
	occup = hash[:occupation]
	puts "Hello, #{name}! nice to have a #{title} #{occup}"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
