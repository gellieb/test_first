class Array

	def sum
		self.reduce(0, :+) 
	end

	def square
		self.map{|el| el**2}
	end

	def square!
		self.map!{|el| el**2}
	end


end