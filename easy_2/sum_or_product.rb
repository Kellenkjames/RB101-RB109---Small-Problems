# Sum or Product of Consecutive Integers

=begin

* P - [Understanding the] Problem

Problem: Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

input: integer, string
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

Array [1, 2, 3]

__________________________________________________

* A - Algorithm

- Initialize an empty array and assign to variable named arr
- integer = nil

- Prompt the user to enter an integer greater than 0
- Keep asking the user for input until integer is greater than 0
  - If integer is greater than 0
    - break from loop
  - Else
    - ask user again to enter an integer greater than 0
  -end

- Prompt the user to either enter 's' to compute the sum, or 'p' to compute the product
- Repeat until user either enter 's' or 'p' 
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

#* C - Code

integer = nil

loop do
  puts '>> Please enter an integer greater than 0:'
  integer = gets.chomp.to_i
  break if integer > 0
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  answer = gets.chomp.downcase
  
  if answer == 's'
    sum = (1..integer).inject(:+)
    puts "The sum of the integers between 1 and #{integer} is #{sum}."
    break
  elsif answer == 'p'
    product = (1..integer).inject(:*)
    puts "The product of the integers between 1 and #{integer} is #{product}."
    break
  else
    puts ">> Enter 's' to compute the sum or 'p' to compute the product."
  end
  
end