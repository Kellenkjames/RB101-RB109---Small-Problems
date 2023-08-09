=begin

* P - [Understanding the] Problem

Problem: Given a method, take a positive integer as input and return that number with its digits reversed.

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Method takes a single positive integer
          - Returns that number with its digits reversed

        - Implicit Requirements:
          - Ignore arguments with leading zeros

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: num

- Convert `num` to string:
  - reverse the string
  - convert the string to an integer

__________________________________________________

=end

#_________________________________________________

#* C - Code

def reversed_number(num)
  num.to_s.reverse.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1