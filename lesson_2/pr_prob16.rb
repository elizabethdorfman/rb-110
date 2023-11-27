def uuid()
	chars = ("a".."f").to_a + (0..9).to_a
	uuid = ""
	sec1 = Array.new(8){chars.sample}.join
	sec2 = Array.new(4){chars.sample}.join
	sec3 = Array.new(4){chars.sample}.join
	sec4 = Array.new(4){chars.sample}.join
	sec5 = Array.new(12){chars.sample}.join
	sec1 + "-" + sec2 + "-" + sec3 + "-" + sec4 + "-"+ sec5
end