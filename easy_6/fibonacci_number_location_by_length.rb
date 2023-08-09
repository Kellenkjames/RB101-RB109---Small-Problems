=begin

* P - [Understanding the] Problem

Problem: Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Return the index of the first Fibonacci number that has the number of digits specified as an argument
          - The first 2 numbers are 1
          - Each subsequent number is the sum of the two previous numbers

        - Implicit Requirements:
          - You may assume the argument is always greater than or equal to 2
          - The index refers to the position in the sequence

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

find_fibonacci_index_by_length(2) == 7           # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

__________________________________________________

* D - Data Structure

Array [1, 1]

__________________________________________________

* A - Algorithm

Define a single method parameter: digits

Initialize a local variable called fibonacci_arr and assign to the following array [1, 1]

while the last number in `fibonacci_arr` is less than `digits`
  - append the return value of last number + previous number in `fibonacci_arr`
end

return the `fibonacci_arr` size

__________________________________________________

=end

#_________________________________________________

#* C - Code

def find_fibonacci_index_by_length(digits)
  fibonacci_arr = [1, 1]
  
  while fibonacci_arr.last.to_s.size < digits
    fibonacci_arr << fibonacci_arr[-1] + fibonacci_arr[-2]
  end

  fibonacci_arr.size
end

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847