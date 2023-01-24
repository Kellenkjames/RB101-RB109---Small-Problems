# Squaring an Argument

=begin

* P - [Understanding the] Problem

Problem: Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Compute the square of the argument using the multiply method

        - Implicit Requirements:
          - Must use the multiply method

        - Clarifying Questions:
          - N / A 

__________________________________________________

* E - Examples / Test Cases

square(5) == 25
square(-8) == 64

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

Define a method that accepts input for one argument:
  - multiply(number, number)
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def multiply(num_one, num_two)
  num_one * num_two
end

def square(number)
  multiply(number, number)
end

square(5) == 25
square(-8) == 64