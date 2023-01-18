# Reverse the Digits in a Number

=begin

* P - [Understanding the Problem]

Problem: Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Integer must be positive
          - Return integer with its digits reversed

        - Implicit Requirements:
          - Ignore arguments with leading zeros

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

N / A

__________________________________________________

* A - Algorithm

- Initialize a variable called string and assign to number converted to string
- Initialize a variable called reversed_string and assign string with reverse method inoked
- Convert reversed_string to integer
end

__________________________________________________


=end

#_________________________________________________

#* C - Code

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1