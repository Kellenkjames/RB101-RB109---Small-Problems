=begin

* P - [Understanding the] Problem

Problem: Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Write a method that computes the square of its argument

        - Implicit Requirements:
          - Use the multiply method from the "Multiplying Two Numbers" problem (previous)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

square(5) == 25
square(-8) == 64

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Invoke `multiply` and pass in `number` as the first and second argument

__________________________________________________

=end

#_________________________________________________

#* C - Code

def multiply(n1, n2)
  n1 * n2
end

def square(number)
  multiply(number, number)
end

square(5) == 25
square(-8) == 64

# Further Exploration: What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the method?

def multiply_v2(n1, n2)
  n1 ** n2
end

def square_v2(number, power)
  multiply_v2(number, power)
end


square_v2(5, 2) == 25
square_v2(5, 3) == 125
