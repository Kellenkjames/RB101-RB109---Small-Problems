=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a number as an argument, return the negative of that number if the argument is positive. If the number is 0 or negative, return the original number.

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Method will take a single argument (number)
          - If the argument is a positive number, return the negative of that number
          - If the number is 0 or negative, return the original number

        - Implicit Requirements:
          - Argument must be a valid integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- If `number` is greater than `0`
  - return negative version of `number`
- Else
  - return `number`
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def negative(number)
  number > 0 ? -number : number
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0