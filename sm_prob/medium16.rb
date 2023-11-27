=begin
Store register as an array of integers
Store stack as an array of integrs
How to iterate through each argument in ruby?
=end
def minilang(string)
	register =[0]
	stack = []
	args = string.split(" ")
	args.each do |arg|
		if arg.to_i.to_s == arg
			register.push(arg.to_i)
		elsif arg == 'PRINT'
			puts register[-1].to_s
		elsif arg == "PUSH"
			stack.push(register[-1])
		elsif arg == "ADD"
			register[-1] = register[-1] + stack.pop()
		elsif arg == "SUB"
			register[-1] = register[-1] - stack.pop()
		elsif arg == "MULT"
			register[-1] = register[-1] * stack.pop()
		elsif arg == "DIV"
			register[-1] = register[-1] / stack.pop()
		elsif arg == "MOD"
			register[-1] = register[-1] % stack.pop()
		elsif arg == "POP"
			register.push(stack.pop)
		end
	end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('-3 PUSH 5 SUB PRINT')
