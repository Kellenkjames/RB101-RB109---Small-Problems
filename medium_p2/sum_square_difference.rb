=begin

* P - [Understanding the] Problem

Problem: Given a method, compute the difference between the square of the sum of the first `n` positive integers and the sum of the squares of the first `n` positive integers.

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Compute the difference between the square of the sum of the first `n` positive integers and the sum of the squares of the first `n` positive integers.
        
        - Implicit Requirements:
          - Input of `1` will return `0`

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

sum_square_difference(3) == 22
  # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

* Step 1: Find the square of the first `n` positive integers

Initialize a local variable called sum_one and assign to the return value of the sum of elements from 1 to `n`, then square the final return value.

* Step 2: Find the square of each `n` up to `number`

Initialize a local variable called sum_two and assign to the integer `0`

- Iterate from 1 up to `number` and for each iteration:
  - reassign `sum_two` to the current `n` (squared)
- repeat the above step until all numbers in the range object have been processed

return `sum_one` minus `sum_two`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def sum_square_difference(number)
  sum_one = ((1..number).sum)**2
  sum_two = 0
  (1..number).each { |n| sum_two += n ** 2 }
  sum_one - sum_two
end

sum_square_difference(3) == 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150