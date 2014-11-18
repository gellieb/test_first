class RPNCalculator
	attr_accessor :calculator
	def initialize
		@calc= []
	end

	def push(num)
  	@calc<< num.to_f 
  end
  
  def plus		
  	eval(:+)
  end

  def minus
  	eval(:-)
  end
  
  def divide
  	eval(:/)
  end
  
  def times
  	eval(:*)
  end
  
  def value
  	@calc.last #outputs last entry or @calc[-1]	
  end

  def tokens(str)
  	@tokens = str.split.map{|x|operators?(x) ? x.to_sym : x.to_i}
  end

  def evaluate(str)
  	tokens(str).each do |oper|
  		case oper
  		when :+ ; plus
  		when :- ; minus
  		when :* ; times
  		when :/ ; divide
  		else ; push oper
  		end
  	end
  	value
  end

	def operators?(x)
  		operators = %w{* + - /}
  		operators.include?(x)
  end
end

private
def eval(operator)
	raise "calculator is empty" if @calc.length < 2
	num2= @calc.pop
	num1= @calc.pop
	case operator 
	when :+ ; result = num1 + num2
	when :- ; result = num1 - num2
	when :* ; result = num1 * num2
	when :/ ; result = num1 / num2
	end
	@calc << result
end