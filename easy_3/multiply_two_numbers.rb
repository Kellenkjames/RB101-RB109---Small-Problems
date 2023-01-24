# Multiplying Two Numbers

=begin

* P - [Understanding the] Problem

Problem: Create a method that takes two arguments, multiplies them together, and returns the result.

input: two integers
output: integer
rules:
        - Explicit Requirements:
          - Method will take two arguments
            -  Multiplies them together
              - Returns the result

        - Implicit Requirements:
          - Both arguments must be valid integers

        - Clarifying Questions:
          - N / A 

__________________________________________________

* E - Examples / Test Cases

multiply(5, 3) == 15

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

Define a method that accepts input for two arguments:
  - num_one * num_two
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def multiply(num_one, num_two)
  num_one * num_two
end

multiply(5, 3) == 15