require "pry"
require "pry-byebug"

def fizzbuzz (num1, num2)
	counter = num1
	while counter <= num2
		binding.pry
		if counter%3 == 0 && counter%5 ==0
			puts "FizzBuzz"
		elsif counter%3 == 0
			puts "Fizz"
		elsif counter %5 == 0
			puts "Buzz"
		else
			puts counter
		end
		counter += 1
	end
end

p fizzbuzz(1, 15)