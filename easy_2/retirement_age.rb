=begin

* P - [Understanding the] Problem

Problem: Build a program that displays when the user will retire and how many years she has to work till retirement.

input: string
output: string
rules:
        - Explicit Requirements:
          - Display when the user will retire and how many years he / she has to work till retirement.

        - Implicit Requirements:
          - No data validation

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

CURRENT_YEAR = Time.new.year

- Ask the user for their age:
  - initialize a local variable named current_age and assign to user input (convert to integer)
- Ask the user at what age they would like to retire:
  - initialize a local variable named retirement_age and assign to user input (convert to integer)

- Initialize a local variable named years_left_to_work and assign to the value of `retirement_age` - `current_age`
- Initialize a local variable named retirement_year and assign to the the value of CURRENT_YEAR + `years_left_to work`

- Output custom strings that inject variables from above

__________________________________________________

=end

#_________________________________________________

#* C - Code

CURRENT_YEAR = Time.now.year

print '==> What is your age? '
current_age = gets.chomp.to_i

print '==> At what age would you like to retire? '
retirement_age = gets.chomp.to_i

years_left_to_work = retirement_age - current_age
retirement_year = CURRENT_YEAR + years_left_to_work

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You only have #{years_left_to_work} years of work to go!"