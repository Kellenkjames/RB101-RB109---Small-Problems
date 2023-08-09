=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an integer argument, return an Array of all integers, in sequence, between 1 and the argument. You may assume that the argument will always be a valid integer that is greater than 0.

input: Integer
output: Array of Integers
rules:
        - Explicit Requirements:
          - Return an Array of all integers, in sequence, between 1 and the argument

        - Implicit Requirements:
          - You may assume that the argument will always be a valid integer that is greater than 0

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Generate an array of consecutive numbers from `1` to `number`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def sequence(number)
  (1..number).to_a
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

#_________________________________________________

# Further Exploration: Food for thought: what do you think `sequence` should return if the argument is not greater than 0. For instance, what should you do if the argument is `-1` ? Can you alter your method to handle this case?

def sequence_v2(number)
  number <= 0 ? (number..0).to_a : (1..number).to_a
end

sequence_v2(0) # => []
sequence_v2(-1) # => [-1, 0]
sequence_v2(5) # => [1, 2, 3, 4, 5]