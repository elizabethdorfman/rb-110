arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
#use the map method
#return identical to the original but values incremented by 1
#
arr2 = arr.map do |hash|
 hash.map do |key,value|
		[key, value +1]
 end
end

p arr2