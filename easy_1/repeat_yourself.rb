# Repeat Yourself

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

- input(s): string, integer
- output: string
- rules:
        Explicit Requirements:
        - Integer must be positive
        - String must be printed as many times as the integer indicates

        Implicit Requirements:
        - Integer cannot be negative or a floating point
        - String will be printed (not returned)

__________________________________________________

* E - Examples / Test Cases

repeat('Hello', 3)
Hello
Hello
Hello
# => nil 

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Iterate over string as many times as the integer:
  - for each iteration, print out the string
end

__________________________________________________

=end

# _________________________________________________

#* C - Code

def repeat(string, number)
  number.times { |n| puts "#{string}" }
end

repeat('Hello', 3)
