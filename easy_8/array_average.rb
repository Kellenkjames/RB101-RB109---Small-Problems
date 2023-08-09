=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one argument, an array containing integers, return the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Don't use the `Array#sum` method for your solution - see if you can solve this problem using iteration more directly.

input: Array of integers
output: Integer
rules:
        - Explicit Requirements:
          - Return the average of all numbers in the array
          - The array will never be empty
          - The numbers will always be positive integers

        - Implicit Requirements:
          - You may not use the `Array#sum` method

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: numbers

Initialize a local variable called sum and assign to the integer `0`

- Iterate over `numbers` and for each iteration:
  - add current `number` to `sum`
- repeat this step until all numbers have been processed

return the result of divding `sum` by the size of numbers

__________________________________________________

=end

#_________________________________________________

#* C - Code

def average(numbers)
  sum = 0
  numbers.each { |num| sum += num }
  return sum / numbers.size
end

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

#_________________________________________________

# Further Exploration: Currently, the return value of `average` is an `Integer`. When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a `Float`. Can you change the return value of `average` from an `Integer` to a `Float` ?

def average_v2(numbers)
  sum = 0
  numbers.each { |num| sum += num }
  return (sum.to_f / numbers.size)
end

puts average_v2([2, 7])