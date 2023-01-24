# Arithmetic Integer

=begin

* P - [Understanding the] Problem

Problem: Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

input(s): two positive integers
output: integer
rules:
        - Explicit Requirements:
          - Prompt the user for two positive integers
          - Print the results of the following operations on those two numbers:
            - addition
            - subtraction
            - product
            - quotient

        - Implicit Requirements:
          - Do not worry about validating the input

        - Clarifying Questions:
          - N / A

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

N / A

__________________________________________________

* A - Algorithm

- Create a helper method to handle the prompt message:
  - Method will accept one argument (msg)
  - puts "==> #{msg}"
- end

- Prompt the user to enter the first number:
  - first_number = gets.chomp.to_i
- Prompt the user to enter the second number:
  - second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

__________________________________________________

=end

#_________________________________________________

#* C - Code

def prompt(msg)
  puts "==> #{msg}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i

prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")