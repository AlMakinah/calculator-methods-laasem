def add(op1, op2)
	return op1 + op2
end

def subtract(op1, op2)
	return op1 - op2
end

def multiply(op1, op2)
	return op1 * op2
end

def divide(op1, op2)
	return op1 / op2
end

def power(op1, op2)
	counter = 0
	expo = 1
	while counter < op2
		expo *= op1
		counter += 1
	end
	return expo
end

def calculator
	puts 'Please enter operand 1, operand 2, and the operation you want to perform [+, -, *, /] as comma-separated values'
	input_array = gets.chomp.split(',')
	op1 = input_array[0].to_i
	op2 = input_array[1].to_i
	case input_array[2]
	when '+'
		result = add(op1, op2)
	when '-'
		result = subtract(op1, op2)
	when '*'
		result = multiply(op1, op2)
	when '/'
		result divide(op1, op2)
	when '^'
		# result = op1 ** op2
		result = power(op1, op2)
	else
		puts "Invalid operation"
		result = "Invalid"
	end
	puts %{Result is: #{result}}
end

calculator
