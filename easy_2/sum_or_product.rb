# Sum or Product of Consecutive Integers

=begin

* P - [Understanding the] Problem

Problem: Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

input: string
output: string
rules:
        - Explicit Requirements:
          - Ask the user to enter an integer greater than 0
          - Ask if the user wants to determine the sum or product of all numbers between 1 and the entered integer

        - Implicit Requirements:
          - Input (string) needs to be converted to integer

        - Clarifying Questions:
          - Do we need to check for input validation?

__________________________________________________

* E - Examples / Test Cases

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

- Initialize an empty array and assign to a variable named arr
- Prompt the user to enter an integer greater than 0:
- integer = gets.chomp.to_i

- Prompt the user to either enter 's' to compute the sum, or 'p' to compute the product
- If user enters 's'
  - compute the sum
- Elsif user enters 'p'
  - compute the product
- Else
  - prompt the user to enter a valid string ('s', or 'p')
- end

puts "The sum of the integers between 1 and 5 is 15"

__________________________________________________

=end

#_________________________________________________