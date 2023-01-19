# When will I Retire?

=begin

* P - [Understanding the] Problem

Problem: Build a program that displays when the user will retire and how many years she has to work till retirement.

input: string, string
output: string
rules:
        - Explicit Requirements
          -  Display when the user will retire
          -  Display how many years he / she has to work till retirement

        - Implicit Requirements
          - User inputs (strings) will need to be converted to integers

__________________________________________________

* E - Examples / Test Cases

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- require 'Date'

- Prompt the user for their age
- current_age = gets.chomp.to_i

- Prompt: Ask the user at what age would they like to retire
- retirement_age = gets.chomp.to_i

current_year = Date.today.year

working_years_left = retirement_age - current_age
retirement_year = current_year + working_years_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{working_years_left} years of work to go!"

__________________________________________________

=end

# _________________________________________________

#* C - Code

require 'Date'

puts 'What is your age?'
current_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.to_i

current_year = Date.today.year

working_years_left = retirement_age - current_age
retirement_year = current_year + working_years_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{working_years_left} years of work to go!"

