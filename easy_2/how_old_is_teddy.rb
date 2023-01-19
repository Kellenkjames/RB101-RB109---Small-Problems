# How old is Teddy?

=begin

* P - [Understanding the] Problem

Problem: Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

input: n/a
output: string
rules:
        - Explicit Requirements:
          - Generate a random number between 20 and 200

        - Implicit Requirements:
          - Method doesn't need to return a value (only needs to print)

__________________________________________________

* E - Examples / Test Cases

Teddy is 69 years old!

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize a variable called age and assign to rand(20..200)
- puts "Teddy is #{age} years old!"

__________________________________________________


=end

#_________________________________________________

#* C - Code

age = rand(20..200)
puts 'What is your name?'
name = gets.chomp

name.empty? ? name = 'Teddy' : name
puts "#{name} is #{age} years old!"

