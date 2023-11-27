=begin
Go through n repeitions
toggle first number increment of switches on
toggle second number increment of switches on

data structure
processing: hash of booleans for on and off
output: keys of that hash that are on

algorithm:
put n number of keys into hash with false
Create a new method that turns on lights for increment
=end

def switches(n)
	hash={}
	n.times{|num| hash[num+1] = -1 }
	hash.each{|key,value| turn_on(hash,key)}
	on_keys = hash.select{|key,value| value == 1}.keys
end

def turn_on(hash,int)
	hash.each do|key,value|
		if key%int == 0
			hash[key] = -value
		end
	end
end

p switches(5)
p switches(10)
p switches(1000)