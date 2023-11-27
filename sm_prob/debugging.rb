#Buggy code for select

#Print all the items of the array that are bigger than 3
a = [1,2,3,4,5]
a.select{|num| num > 3}
#Buggy because logical error. Not permanently altering the a array with select!
# Or not reassigning a to the return value selected array returned by the .select method

#Select the top 3 cities
top_cities = {Vegas: "2", LA: "3", NYC: "2", TO: "2",
							Atlanta: "3", SF: "1", Venice: "3"}
top_cities = top_cities.map{|key,value| [key:value.to_i].to_h}
puts top_cities
puts top_cities.sort_by
bigger_than_three= top_cities.select.with_index{|_,index| index < 3 }
