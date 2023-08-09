=begin

* P - [Understanding the] Problem

Problem: Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

input: n/a
output: string
rules:
        - Explicit Requirements:
          - Randomly generate and print Teddy's age.
          - Random number must be between 20 and 200.

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

Teddy is 69 years old!

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Initialize a local variable called age and assign to a random number between 20 and 200
- Output a new string using interpolation to inject `age` into a complete sentence

__________________________________________________

=end

#_________________________________________________

#* C - Code

age = rand(20..200)
puts "Teddy is #{age} old!"

# Further Exploration - Modify this program to ask for a name, and then print the age for that person. For an extra challenge, use "Teddy" as the name if no name is entered.

puts 'What is your name?'
name = gets.chomp
puts name.empty? ? "Teddy is #{age} old!" : "#{name} is #{age} old!"