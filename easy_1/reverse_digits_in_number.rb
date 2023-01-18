# Reverse the Digits in a Number

=begin

* P - [Understanding the Problem]

PROBLEM: Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

input: integer
output: integer
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

N / A

__________________________________________________

* A - Algorithm

- Take the number input and chain together the following methods:
  - convert to string
  - reverse the string
  - convert to integer
end

__________________________________________________


=end

#_________________________________________________

#* C - Code

def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21
p reversed_number(12003) == 30021
p reversed_number(1) == 1