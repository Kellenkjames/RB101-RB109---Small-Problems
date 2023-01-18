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





=end