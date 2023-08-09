=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two arguments, multiply them together, and return the result.

input: two integers
output: one integer
rules:
        - Explicit Requirements:
          - Method will take two arguments, multiply them together, and return the result

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

multiply(5, 3) == 15

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define two method parameters: n1, n2

- Multiply n1 * n2

__________________________________________________

=end

#_________________________________________________

#* C - Code

def multiply(n1, n2)
  n1 * n2
end

multiply(5, 3) == 15
multiply(8, 5) == 40
multiply(6, 3) == 18
multiply(12, 4) == 48