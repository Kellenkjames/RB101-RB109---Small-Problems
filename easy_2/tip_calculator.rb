=begin

* P - [Understanding the] Problem

Problem: Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

input: string
output: string
rules:
        - Explicit Requirements:
          - Prompt user for a bill amount and a tip rate
          - The program must compute the tip and then display both the tip and the toral amount of the bill.

        - Implicit Requirements:
          - User input needs to be converted to an integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Ask the user what is the bill amount:
  - initialize a local variable called bill and assign to the user input (converted to float)
- Ask the user what is the tip percentage:
  - initialize a local variable called tip_percentage and assign to the user input (converted to float)

- Initialize a local variable called tip_amount and assign to the calculated value tip percentage
- Initialize a local variable called total and assign to the value of `bill` + `tip_amount`

- Output the tip amount
- Output the total amount

__________________________________________________

=end

#_________________________________________________

#* C - Code

print '==> What is the bill? '
bill = gets.chomp.to_f

print '==> What is the tip percentage? '
tip_percentage = gets.chomp.to_f

tip_amount = (bill * (tip_percentage / 100)).round(2)
total = (bill + tip_amount).round(2)

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f", total)}"
