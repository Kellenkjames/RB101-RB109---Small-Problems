# Even Numbers 

=begin

* P - [Understanding the] Problem

Problem: Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

input: integers
output: integers
rules:
        - Explicit Requirements:
          - Print all even numbers from 1 to 99 (inclusive)
          - Each number should be printed on a separate line

        - Implicit Requirements:
          - Include the numbers on the outer bounds of the range, i.e., 1 and 99 (if applicable)

__________________________________________________

* E - Examples / Test Cases

2
4
6
8
10
...

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Iterate over the range of numbers using select method
  - If number is even
    - print each number on a separate line
  end

__________________________________________________


=end

#_________________________________________________

#* C - Code

(1..99).select { |number| puts number if number.even? }