class Friend
	def greeting(name=nil)
		name == nil ? "Hello!" : "Hello, #{name}!"
	end
end

# class Friend
# 	def greeting(name=nil)
# 		return "Hello!" if name == nil; return "Hello, #{name}!"
# 	end
# end

# class Friend
#  	def greeting(name = nil) 
#  		if name != nil
#  			return "Hello, #{name}!"
#  		else
#  			return "Hello!" 
#  		end
#  	end
# end