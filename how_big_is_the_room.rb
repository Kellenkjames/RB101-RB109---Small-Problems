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

- Initialize a constant variable called SQMETERS_TO_SQFEET and assignt the value 10.7639
- Prompt user to enter the length of the room in meters:
- length = gets.chomp.to_f
- Prompt user to enter the width of the room in meters:
- width = gets.chomp.to_f

- room_size = length_of_room * width_of_room
- square_feet = room_size * SQMETERS_TO_SQFEET

puts "The area of the room is #{room_size.round(2)} square meters (#{square_feet.round(2)} square feet)."

__________________________________________________

=end

#_________________________________________________

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters:'
length = gets.chomp.to_f

puts '==> Enter the width of the room in meters:'
width = gets.chomp.to_f

room_size = length * width
square_feet = room_size * SQMETERS_TO_SQFEET

puts "The area of the room is #{room_size.round(2)} square meters (#{square_feet.round(2)} square feet)."

