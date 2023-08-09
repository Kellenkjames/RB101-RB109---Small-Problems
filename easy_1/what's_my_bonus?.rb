=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two arguments, a positive integer and a boolean - calculate the bonus for a given salary. If the boolean is `true`, the bonus should be half of the salary. If the boolean is `false`, the bonus should be `0`.

input: integer, boolean
output: integer
rules:
        - Explicit Requirements:
          - Method takes two arguments (a positive integer and a boolean)
          - Method calculates the bonus for a given salary:
            - If the boolean is true
              - the bonus should be half of the salary
            - Else
              - the bonus should be `0`

        - Implicit Requirements:
          - Method returns a new object

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print `true`

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define two method parameters: salary, bonus

- If `boolean` is true
  - return `salary` divided by 2
- Else
  - return `0`
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000