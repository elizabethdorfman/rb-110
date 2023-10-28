MINUTES= 60
HOURS = 24
MINUTES_PER_DAY= MINUTES * HOURS

def after_midnight (string)
	hours, minutes = string.split(":")
	minutes = (hours.to_i * MINUTES + minutes.to_i) %MINUTES_PER_DAY
end

def before_midnight (string)
	hours, minutes = string.split(":")
	hours = 23 - hours.to_i
	minutes = 60 - minutes.to_i
	minutes = hours.to_i * MINUTES + minutes.to_i
	return 0 if minutes == 1440
	return 0 if hours == -1
	return minutes
end

p after_midnight('00:00')
p after_midnight('00:00') == 0
p after_midnight('12:34')
p after_midnight('12:34') == 754
p after_midnight('24:00')
p after_midnight('24:00') == 0
=begin
p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0
=end