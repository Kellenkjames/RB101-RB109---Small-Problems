=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one argument, a positive integer, return the sum of its digits. 

input: integer
output: integer 
rules:
        - Explicit Requirements:
          - Method takes one argument, a positive integer, and returns the sum of its digits

        - Implicit Requirements:
          -  Avoid using built-in methods

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Convert `number` to string, then convert string to an array of chars, and iterate over each char:
  - for each iteration:
    - convert current char to integer
  - repeat the above step until all elements have been processed
  
- return new Array and reduce values to a single object (sum)

__________________________________________________

=end

#_________________________________________________

#* C - Code

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#_________________________________________________

# Further Exploration: For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

def sum_v2(number)
  number.digits.sum
end

puts sum_v2(23) == 5
puts sum_v2(496) == 19
puts sum_v2(123_456_789) == 45
