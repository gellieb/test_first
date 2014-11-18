# default block = 'yield' (invisible, anonymous, nameless parameter)
# '&' will turn a default block into a proc => makes default block visible
# '&' can *ALSO* turn a PROC into a BLOCK
# &p = default block, 'p' can be 'call'-ed later because 'p' is a proc
# proc => proc.'call'
# block => 'yield'


def reverser
	yield.split.map {|word| word.reverse}.join(" ")
end

def reverser(&block)
	block.call.split.map {|word| word.reverse}.join(" ")
end



# p reverser{"hello dolly"}


def adder
	yield 1
	yield 3
end

def adder(num=1, &block)
	block.call + num
end
#  ** ask sam why you have to list default value first**

# adder {|i| 5 + i}
# p sum

def repeater(num=0, &block)
	if num == 0
		return block.call
	else
		num.times do |n|
			block.call
		end
	end
end


# *** refactor **


# def repeater(num=0, &block)
# 	return block.call if num = 0; num.times {|n| block.calls}
# end

# repeater do |num|
# 	n = 0
# 	while n < num
# 		n+=1
# 	end
# 	n
# end






