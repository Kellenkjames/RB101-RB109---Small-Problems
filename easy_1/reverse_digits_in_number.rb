# Reverse the Digits in a Number

=begin

* P - [Understanding the Problem]

PROBLEM: Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - integer must be positive
          - return integer with its digits reversed

        - Implicit Requirements:
          - ignore arguments with leading zeros

        - Clarifying Questions:
          - Are we returning the same object or a new object?

__________________________________________________

* E - Examples / Test Cases

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21    #* No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

- Initialize and empty array and assign to a variable called revese_arr
- Initialize a local variable called numbers and assign to the values of invoking split on the integer
- Iterate over each value in numbers in reverse order
  - for each iteration:
    - push the current value to the reverse_arr
  end

reverse_arr.join.to_i 
end

__________________________________________________


=end