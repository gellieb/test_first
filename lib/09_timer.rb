class Timer
	attr_accessor :seconds
	# def seconds
	# 	@seconds
	# end
	# def seconds=(new_seconds)
	# 	@seconds= new_seconds
	# end

	def initialize(seconds=0)
		@seconds = seconds 
	end
	def seconds=(new_seconds)
		@seconds = new_seconds

	end
	def time_string
		hh = @seconds/3600
		mm = @seconds%3600/60
		ss = @seconds%60
		time = [hh, mm, ss]
		new_time= time.map {|t| t.to_s.rjust(2,'0')}.join(":")
	end

end

# def time_string
# 		str = []
# 		hours = @seconds/(3600) # returns hours
# 		mins = (@seconds - hours*3600)/60 
# 		secs = @seconds - hours*3600 - mins*60
# 		if hours < 10
# 			str << "0" + hours.to_s
# 		end
# 		if mins < 10
# 			str << "0" + mins.to_s
# 		end
# 		if secs < 10
# 			str << "0" + secs.to_s
# 		else
# 			str << secs.to_s
# 		end
# 		str.join(":")
# 	end