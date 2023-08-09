=begin

* P - [Understanding the] Problem

Problem: Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

input: integer, string
output: integer
rules:
        - Explicit Requirements:
          - Ask the user to enter an integer greater than 0
          - Ask if the user wants to determine the sum or product between 1 and the entered integer

        - Implicit Requirements:
          - User input needs to be converted from string to integer
          - No data validation checks

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Initialize a local variable called num and assign to `nil`

- Initialize a loop method:
  - Ask the user to enter an integer greater than 0:
  - Reassign `num` to the user input while 
    - convert input to an integer
  - Break from loop if `num` is greater than `0`
end

- Ask the user to enter 's' to compute the sum, or `p` to compute the product
- Initialize a local variable called calculation and assign to the user input 
  - convert input to downcase version

- If `calculation` is equal to the string `s`
  - initialize a local variable called `sum` and assign it to the sum of the integers between `1` and `num`
  - output a custom string
- Elsif `calculation` is equal to the string `p`
  - initialize a local variable called `product` and assign it to the product of the integers between `1` and `num`
  - output a custom string

__________________________________________________

=end

#_________________________________________________

#* C - Code

num = nil

loop do
  puts '>> Please enter an integer greater than 0:'
  num = gets.chomp.to_i
  break if num > 0
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
calculation = gets.chomp.downcase

if calculation == 's'
  sum = (1..num).inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif calculation == 'p'
  product = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{product}."
end