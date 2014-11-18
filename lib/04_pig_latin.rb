

def translate(str)
	translated_words = str.split.map{|word| translated_word(word)}
	translated_words.join(" ")
end

def is_vowel?(letter)
	vowels = %w{a e i o u}
	vowels.include?(letter)
end

def initials(word)
	initial_consonants = []
	prev_l = ""
	word.each_char do |l|
		break if is_vowel?(l) && !(l=='u' && prev_l=='q')
		initial_consonants << l 
		prev_l = l
	end
	initial_consonants.join
end

def translated_word(word)
	initial_consonants = initials(word)
	rest_word = word[(initial_consonants.size)..-1]
	rest_word + initial_consonants + "ay"
end



# 		if vowels.include?(word[0])
# 			result << word+="ay"


# 		elsif word[0..1] == 'qu'
# 			result << word[2..-1] + 'quay'
# 		elsif consonants.include?(word[0]) 
# 			if word[0..1] == 'qu'
# 				result << word[2..-1] + 'quay'
# 			elsif word[0..2] == 'squ'
# 				result << word[3..-1] + 'squay'
# 			elsif consonants.include?(word[1]) && consonants.include?(word[2]) && vowels.include?(word[3])
# 				result << word[3..-1] + word[0..2] + 'ay'
			 
# 			elsif consonants.include?(word[1]) && vowels.include?(word[2])
# 				result << word[2..-1] + word[0..1] + 'ay'
		
# 			elsif vowels.include?(word[1])
# 				result << word[1..-1] + word[0] + 'ay'
# 			end
# 		end
	
# 	end
# 	result.join(" ")
# end



