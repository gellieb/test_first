def translate(str)
	words = str.split(" ")
	# consonants = %w{b c d f g h j k l m n p q r s t v w x y z} 
	vowels = %w{a e i o u}
	result = []	
	words.map do |word|





		if vowels.include?(word[0])
			result << word+="ay"


		elsif word[0..1] == 'qu'
			result << word[2..-1] + 'quay'
		elsif consonants.include?(word[0]) 
			if word[0..1] == 'qu'
				result << word[2..-1] + 'quay'
			elsif word[0..2] == 'squ'
				result << word[3..-1] + 'squay'
			elsif consonants.include?(word[1]) && consonants.include?(word[2]) && vowels.include?(word[3])
				result << word[3..-1] + word[0..2] + 'ay'
			 
			elsif consonants.include?(word[1]) && vowels.include?(word[2])
				result << word[2..-1] + word[0..1] + 'ay'
		
			elsif vowels.include?(word[1])
				result << word[1..-1] + word[0] + 'ay'
			end
		end
	
	end
	result.join(" ")
end

def initials(word)
	initials_arr = []
	word.each_char do |l|
		if vowels.include?(l)

		elsif vowels.include?(l)




	end


end