=begin

* P - [Understanding the] Problem

Problem: Build a program that asks a user for the length and width of a room in meters and then displays the square_meters of the room in both square meters and square feet.

input: integer, integer
output: string
rules:
        - Explicit Requirements:
          - Prompt the user for the length and width of a room in meters
          - Display the square_meters of the room in both square meters and square feet

        - Implicit Requirements:
          -  Ignore validating the input at this time

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The square_meters of the room is 70.0 square meters (753.47 square feet).

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Initialize a constant variable called SQMETERS_TO_SQFEET and assign to the value `10.7639`

- Prompt the user to enter the length of the room in meters:
  - initialize a local variable called length and assign to the user response
  - convert reference of `length` to a floating number
- Prompt the user to enter the width of the room in meters:
  - initialize a local variable called width and assign to the user response
  - convert reference of `width` to a floating number

- Initialize a local variable called square_meters and assign to the value of `length` x `width`
- Initialize a local variablec called square_feet and assign to the value of
`SQMETERS_TO_SQFEET` x `square_meters` rounded to `2` digits

- Output a string that uses interoplation to inject `square_meters` and `square_feet` into a complete sentence

__________________________________________________

=end

#_________________________________________________

#* C - Code

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters:'
length = gets.chomp.to_f

puts '==> Enter the width of the room in meters:'
width = gets.chomp.to_f

square_meters = length * width.round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
        "square meters (#{square_feet} square feet)."
