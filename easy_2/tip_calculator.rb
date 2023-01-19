# Tip calculator

=begin

* P - [Understanding the] Problem

Problem: Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

input: string, string
output: string, string
rules:
        - Explicit Requirements:
          - Prompt for a bill amount and a tip rate
          - Must compute the tip
          - Must display both the tip and the total amount of the bill

        - Implicit Requirements:
          - User input (strings) need to be converted to integers

__________________________________________________

* E - Examples / Test Case

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Prompt user for the bill amount
- bill_amount = gets.chomp.to_f

- Prompt user for the tip percentage
- percentage = gets.chomp.to_f

- tip = ((bill_amount * percentage) / 100).round(2)
- total = (bill_amount + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

__________________________________________________


=end

#_________________________________________________

#* - Code 

puts 'What is the bill?'
bill_amount = gets.chomp.to_f

puts 'What is the tip percentage?'
percentage = gets.chomp.to_f

tip = ((bill_amount * percentage) / 100).round(2)
total = (bill_amount + tip).round(2)

puts "==> The tip is $#{tip}"
puts "==> The total is $#{total}"