def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num = 2)
	((0...num).map {str}).join(" ")
end

def start_of_word(str, num=1)
	((0...num).map {|i| str[i]}).join("")
end

def first_word(str, num=0)
	str.split(" ")[num]
end

def titleize(str)
	title = []
	little_words = %w(the in of a and over)
	str.capitalize.split.each_with_index do |word, i|
		title << word if i == 0
		if i > 0 
			little_words.include?(word) ? title << word : title << word.capitalize
		end
	end	
	title.join(" ")
end