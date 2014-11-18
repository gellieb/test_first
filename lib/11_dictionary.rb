class Dictionary
	attr_accessor :entries

	def entries
		@entries
	end
	
	def initialize
		@entries = {}
	end
	
	def add(entry)
		if entry.class== Hash 
			entry.each {|key, value| @entries[key]= value}
		elsif entry.class == String
			@entries[entry]= nil
		end
	end
	
	def keywords
		@entries.keys.sort
	end

	def include?(key)
		@entries.keys.include?(key)
	end
	
	def find(str)
		found = []
		@entries.keys.each do |key|
			found << key if /#{str}/.match(key)
		end
		if found.length > 0
			result = {}
			found.each do |key|
				result[key]= @entries[key]
			end

			p result
		else
			{}
		end
	end
	
	def printable
		result = ""
		self.keywords.each do |key|
			result += "[#{key}] \"#{entries[key]}\"\n"
		end
		result.chomp #gets rid of that last \n

	end
end
