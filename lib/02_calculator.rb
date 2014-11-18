def add(num1, num2)
	num1+num2
end

def subtract(num1, num2)
	num1-num2
end

def sum(array)
	array.empty? ? 0 : array.inject(:+)
end

def multiply(num1, num2)
	num1*num2
end

def power(num1, num2)
	num1**num2
end

def factorial(num)
	num== 0 ? 0 : num.downto(1).reduce(:*)
end

