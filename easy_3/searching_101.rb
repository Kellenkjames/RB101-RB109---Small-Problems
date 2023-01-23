# Searching 101

=begin

* P - [Understanding the] Problem

Problem: Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

input: integers (6)
output: string
rules:
        - Explicit Requirements:
          - Ask the user to enter 6 numbers
          - Print a message that describes whether or not the 6th number appears amongst the first 5 numbers

        - Implicit Requirements:
          - User input (string) needs to be converted to integer object

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

- Initialize a variable called `arr` and assign to an empty array []

- Ask the user to enter the 1st number:
  - first_number = gets.chomp.to_i
  - arr << first_number
- Ask the user to enter the 2nd number:
  - second_number = gets.chomp.to_i
  - arr << second_number
- Ask the user to enter the 3rd number:
  - third_number = gets.chomp.to_i
  - arr << third_number
- Ask the user to enter the 4th number:
  - fourth_number = gets.chomp.to_i
  - arr << fourth_number
- Ask the user to enter the 5th number:
  - fifth_number = gets.chomp.to_i
  - arr << fifth_number
- Ask the user to enter the last number: 
  - last_number = gets.chomp.to_i

- If `arr` includes `last_number`
  print The number `last_number` appears in `arr`
- Else
  print The number `last_number` does not appear in `arr`
end
__________________________________________________

=end

#_________________________________________________

#* C - Code

