=begin
requirements:
Time calculation:
- 1 hour is 60
- starts at 00:00
- 60 is 1:00
- -60 is 11:00

Positive numbers:
- If more than 1440 keep subtracting by 1440
- Divide by 60, use number as hour and remainder as minute

Negative numbers:
- If less than 1440 keep adding by 1440 until bigger than -1440
- Divide by 60, use 24- number for hour and 60 - remainder for minute

Format
- Hour variable with hours
- Minute variable with minutes
- Output is concatenation of hour ":"" and minute


=end
def time_of_day(int)
	if int >= 0
		while int > 1440
			int -= 1440
		end
		hour, minute = int.divmod(60)

	else
		while int < -1440
			int += 1440
		end
		hour, minute = int.divmod(60)
		hour = 24 + hour
	end
	#format
	hour = hour.to_s
	hour.prepend('0')if hour.size == 1
	minute = minute.to_s
	minute.prepend('0')if minute.size == 1
	hour + ":" + minute
end

p time_of_day(35) == "00:35"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-3) == "23:57"
p time_of_day(-1437) == "00:03"
p time_of_day(-4231) == "01:29"
