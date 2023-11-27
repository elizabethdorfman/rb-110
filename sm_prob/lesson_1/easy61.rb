=begin
input: floating point number
output:string that represents angle
requirements:
- input should be between 0 and 360
- output format should be angle, minutes, seconds:
formatted_dms = "#{degrees}#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
=end
DEGREE = "\xC2\xB0"
def dms(float)
	degrees = float.to_i
	decimal_minutes = (float- degrees) *60
	minutes = decimal_minutes.to_i
	seconds = (decimal_minutes - minutes) * 60
	formatted_dms = "#{degrees}#{DEGREE}#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
end

p dms(30)
p dms(30) == %(30°00'00")
p dms(76.73)
p dms(76.73) == %(76°43'48")
