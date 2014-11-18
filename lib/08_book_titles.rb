class Book
  attr_reader :title
	  # def title
	  # 	@title
	  # end
  def title=(title)
  	@title = capped_phrase(title)
  end

  private
  def capped_phrase(title)
  	arts_preps = %w(the a an in of and but)
  	title.capitalize.split.map {|word| 
  		arts_preps.include?(word) ? word : word.capitalize
  		}.join(" ")
  end
end




#   def title=(title)
# 	  articles = %{the a an and but in of}
# 	  capped_phrase = []
# 	  @title = title.split.each_with_index do |word, i|
# 	  	if i == 0
# 	  		capped_phrase << word.capitalize
# 	  	elsif i>0 && articles.include?(word)
# 	  		capped_phrase<< word
# 	  	else capped_phrase << word.capitalize
	  	
# 	  	end
# 	  end
# 	  return capped_phrase.join(" ")
# 	end
# end
