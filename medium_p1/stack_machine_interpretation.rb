=begin

* P - [Understanding the] Problem

Overview: A stack-and-register programming language is a type of language that uses a stack and a register as its main tools for computation.

Here's a brief explanation of the main components:

* 1. Stack: A stack is a special kind of data structure that follows the LIFO (Last In, First Out) principle. The most recent item added (pushed) to the stack is the first one to be removed (popped) from it.

* 2. Register: A register is a small amount of storage available as part of a CPU or other digital processor. In the context of a stack-and-register programming language, it usually refers to a place to store a single value that can be used in computations.

Programs in a stack-and-register language operate by performing commands on the stack or register. These commands may include pushing a value to the stack, adding the topmost value on the stack to the register, or replacing the register's value with the topmost value on the stack.

__________________________________________________

Problem: Given a method, implement a miniature stack-and-register-based programming language that has the following commands:

- `n` Place a value n in the "register". Do not modify the stack

- `PUSH` Push the register value on to the stack. Leave the value in the register

- `ADD` Pops a value from the stack and adds it to the register value, storing the result in the register

- `SUB` Pops a value from the stack and subtracts it from the register value, storing the result in the register

- `MULT` Pops a value from the stack and multiplies it by the register value, storing the result in the register

- `DIV` Pops a value from the stack and divides it into the register value, storing the integer result in the register

- `MOD` Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register

- `POP` Remove the topmost item from the stack and place in register

- `PRINT` Print the register value

input: String
output: Integer
rules:
        - Explicit Requirements:
          - Miniature stack-and-register-based will implement ALL commands listed above

        - Implicit Requirements:
          - All commands are integer commands (which is only important with DIV and MOD)
          - Programs will be supplied to your language method via a string passed in as an argument
          - Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens (no error-handling is required)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

__________________________________________________

* D - Data Structure

Array `[]`

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize a local variable called commands and assign to the return value of splitting `string` into an array of tokens

Initialize a local variable called register and assign to the integer `0`

- Iterate over each token and index in `commands` and for each iteration:
  - reassign `register` to `token` converted to integer if `token` is a valid integer
  - when `token` is equal to 'PUSH'
    - append register to `stack`
  - when `token` is equal to 'ADD'
    - reassign `register` to the return value of `register` plus the popped value from `stack`
  - when `token` is equal to 'SUB'
    - reassign `register` to the return value of `register` minus the popped value from `stack`
  - when `token` is equal to 'MULT'
    - reassign `register` to the return value of `register` multiplied by the popped value from `stack`
  - when `token` is equal to 'DIV'
    - reassign `register` to the return value of `register` divided by the popped value from `stack`
  - when `token` is equal to 'MOD'
    - reassign `register` to the return value of `register` multiplied by the remainder of the popped value from `stack`
  - when `token` is equal to 'POP'
    - reassign `register` to the return value of the popped value from `stack`
  - when `token` is equal to 'PRINT'
    - output `register`
  end
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def minilang(string)
  stack = []
  commands = string.split
  register = 0

  commands.each do |token|
    # Handle tokens that are numbers (like `5` or `3`)
    register = token.to_i if token.to_i.to_s == token
    case token
    when 'PUSH'       then stack << register
    when 'ADD'         then register += stack.pop
    when 'SUB'         then register -= stack.pop
    when 'MULT'      then register *= stack.pop
    when 'DIV'          then register /= stack.pop
    when 'MOD'       then register %= stack.pop
    when 'POP'        then register = stack.pop
    when 'PRINT'     then puts register
    end
  end

end

minilang('PRINT')
# 0

puts "---"

minilang('5 PUSH 3 MULT PRINT')
# 15

puts "---"

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

puts "---"

minilang('5 PUSH POP PRINT')
# 5

puts "---"

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

puts "---"

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

puts "---"

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

puts "---"

minilang('-3 PUSH 5 SUB PRINT')
# 8

puts "---"

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

minilang('3 PUSH 13 ADD PRINT')

#_________________________________________________

