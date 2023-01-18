# What's my Bonus?

=begin

* P - [Understand the] Problem

Problem: Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

- input(s): integer, boolean
- output: boolean
- rules:
          - Explicit Requirements:
            - Accepts two arguments: a positive integer and a boolean
            - Calculates the bonus for a given salary
              - If the boolean is true, the bonus should be half of the salary
                - Otherwise, the bonus should be 0
          
          - Implicit Requirements:
            - Integer cannot be zero or negative

__________________________________________________

* E - Examples / Test Cases

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- If bonus is true
  - salary /  2
- Else
  - return 0
end

bonus

__________________________________________________

=end

#_________________________________________________

#* C - Code

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

calculate_bonus(2800, true) == 1400
calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
