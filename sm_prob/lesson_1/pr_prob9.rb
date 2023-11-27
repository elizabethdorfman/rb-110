words = "the flintstones rock"
words = words.split
words.each{|word| word[0]= word[0].upcase}
words = words.join(" ")
