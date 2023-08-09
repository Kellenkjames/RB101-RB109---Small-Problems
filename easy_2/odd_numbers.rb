=begin

* P - [Understanding the] Problem

Problem: Given a method, print all odd numbers from `1` to `99`, inclusive, to the console, with each number on a separate line.

input: range of integers
output: integers
rules:
        - Explicit Requirements:
          - Print all odd numbers from `1` to `99`, inclusive, to the console
          - Each number should be printed on a separate line

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

N/A

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Iterate over the range of numbers (from 1 to 99):
  - If the current number is odd
    - Print current number
  Else
    - Do nothing
  end

__________________________________________________

=end

#_________________________________________________

#* C - Code

(1..99).each { |num| puts num if num.odd? }