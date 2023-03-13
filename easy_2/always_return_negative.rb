# Always Return Negative

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Method takes a number as an argument
          - If the argument is a positive number, return the negative of that number
          - If the number is 0 or negative, return the original number

        - Implicit Requirements:
          - No floating point numbers

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- If number is greater than 0
  - return negative version of that number
- Else
  - return the orginal number
-end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def negative(number)
  number > 0 ? -number : number
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby