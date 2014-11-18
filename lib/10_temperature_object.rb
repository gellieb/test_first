class Temperature
  def initialize(options = {})
  	@options = options
  end
 	def in_celsius
 		@options.key?(:c) ? @options[:c] : (@options[:f]-32) * 5.0/9
 	end
 	def in_fahrenheit
 		@options.key?(:f) ? @options[:f] : (@options[:c]*9.0/5)+32
 	end

 	#factory methods 
 	def self.from_fahrenheit(num) # self.from_fahrenheit(32)
 		self.new(:f => num) #=> Temperature.new(:f => 32) // it's the same thing as writing Temperature.new
 	end
 	def self.from_celsius(num)
 		self.new(:c => num)
 	end
 	def self.ftoc(num)
 		self.new(:f => num).in_celsius
 	end
 	def self.ctof(num)
 		self.new(:c => num).in_fahrenheit
 	end
end

class Celsius < Temperature
	def initialize (num, options={})
		@options=options
		@options[:c] = num
	end

	def in_celsius
		super #refers to the same method in super class; you want to adjust to method of super class, just add to it above or below 'super'
	end
	def in_fahrenheit
		super
	end
end

class Fahrenheit < Temperature
	def initialize (num, options={})
		@options=options
		@options[:f] = num
	end

	def in_celsius
		super
	end
	def in_fahrenheit
		super
	end
end
 