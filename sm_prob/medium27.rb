#time.wday is 5
#time.mday is 13
require 'date'
require 'pry'

def friday_13th(year)
	start= Date.new(year, 1, 1)
	last = Date.new(year, 12, 31)
	num = 0
	(start..last).each do |day|
		if day.wday == 5 && day.mday == 13
			num += 1
		end
	end
	puts num
	num
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2