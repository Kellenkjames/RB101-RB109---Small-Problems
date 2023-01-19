# How big is the room?

=begin

* P - [Understanding the] Problem

Problem: Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

input: string, string
output: string
rules:
        - Explicit Requirements:
          - Ask the user for the length of a room in meters
          - Ask the user for the length of a room in square feet

        - Implicit Requirements:
          - User input (string) needs to be converted to an integer
          - 1 square meter == 10.7639 square feet

__________________________________________________

* E - Examples / Test Cases

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize a constant variable called SQMETERS_TO_SQFEET and assign the integer 10.7639
- Prompt user to enter the length of the room in meters:
- length = gets.chomp.to_f
- Prompt user to enter the width of the room in meters:
- width = gets.chomp.to_f

- square_meters = (length * width).round(2)
- square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
        "square meters (#{square_feet} square feet)."

__________________________________________________

=end

#_________________________________________________

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.chomp.to_f

puts '==> Enter the width of the room in meters: '
width = gets.chomp.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
        "square meters (#{square_feet} square feet)."

