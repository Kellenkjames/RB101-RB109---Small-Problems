=begin

* P - [Understanding the] Problem

Problem: Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

input: two positive integers
output: string
rules:
        - Explicit Requirements:
          - Ask the user for two positive integers
          - Print the results of the following operations on those two numbers:
            - Addition
            - Subtraction
            - Product
            - Quotient
            - Remainder
            - Power

        - Implicit Requirements:
          - Input (string) needs to be converted to an integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Build a simple helper method that accepts a single argument (to handle prompt messages):

- Ask the user to enter the first number:
  - initialize a local variable called first_num and assign to the user input
  - convert `first_num` to integer

- Ask the user to enter the second number:
  - initialize a local variable called second_num and assign to the user input
  - convert `second_num` to integer

- Addition: output a custom string that adds `first_num` and `second_num` and returns the sum
- Subtraction: output a custom string that subtracts `first_num` and `second_num` and returns the difference
- Product: output a custom string that multiplies both `first_num` and `second_num` and returns the product
- Quotient: output a custom string that divides `first_num` by `second_num` and returns the quotient
- Remainder: output a custom string that divides `first_num` by `second_num` and returns the remainder
- Power: output a custom string that returns the power of `first_num` as the base and `second_num` as the exponent

__________________________________________________

=end

#_________________________________________________

#* C - Code

def prompt(message)
  puts "==> #{message}"
end

prompt('Enter the first number:')
first_num = gets.chomp.to_i

prompt('Enter the second number:')
second_num = gets.chomp.to_i

prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
prompt("#{first_num} / #{second_num} = #{first_num / second_num}")
prompt("#{first_num} % #{second_num} = #{first_num % second_num}")
prompt("#{first_num} ** #{second_num} = #{first_num ** second_num}")