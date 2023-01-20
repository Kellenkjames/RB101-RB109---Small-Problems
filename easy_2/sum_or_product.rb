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

N / A

__________________________________________________

* A - Algorithm

- integer = nil

1. Keep asking the user for valid input, i.e., integer > 0
  - Convert string to integer and store in variable called integer
    - If integer > 0
      - break from loop
  - Else
    - Ask user to enter a valid input, i.e., integer > 0
  -end

2. Keep asking the user for valid input, i.e., must enter 's' or 'p'
  - Convert response to downcase and store in variable called answer
  - If answer == 's'
    - Find the sum of (1..integer) and store in variable called sum
    - Print "The sum of the integers between 1 and #{integer} is #{sum}."
    - break
  - Elsif answer == 'p' 
    - Find the product of (1..integer) and store in variable called product
    - Print "The product of the integers between 1 and #{integer} is #{product}."
    - break
end

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
  end
  
end