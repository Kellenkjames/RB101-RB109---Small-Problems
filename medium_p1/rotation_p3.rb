=begin

* P - [Understanding the] Problem

Problem: If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.

* The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Method will return the maximum rotation of that argument

        - Implicit Requirements:
          - You do not have to handle multiple 0s

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

__________________________________________________

* D - Data Structure

Array []

Starting value: 735291

1st iteration (rotate to the left) and keep first digit fixed in place, and rotate the remaining digits: 352917

2nd iteration (rotate to the left) and keep first two digits fixed in place, and rotate the remaining digits: 329175

3rd iteration (rotate to the left) and keep first three digits fixed in place, and rotate the remaining digits: 321759

4th iteration (rotate to the left) and keep first four digits fixed in place, and rotate the remaining digits: 321597

* Pattern Analysis: For each iteration, the current digit that is fixed increases by 1 until there are only two elements remaining:

__________________________________________________

* A - Algorithm

Define a single method parameter: number

Initialize a local variable called n and assign to the size of `number` converted to string
Reassign `number` to calling `rotate_rightmost_digits` while passing in `number` and `n` as arguments
Initialize a local variable called all_digits and assign to `number`

Initialize a local variable called count and assign to `0`
Initialize a simple loop, 
- While `n` is greater than `2`
    - initialize a local variable called fixed_digits and assign to the first `n` digits in `all_digits`
    - decrement `n` by `1`
    - reassign `number` to calling `rotate_rightmost_digits` while passing in two arguments:
      - range of elements starting from the last `n` element to the end of the array
      - `n` which represents the last `n` element
    - reassign all_digits to the return value of adding fixed_digits to number
    - increment `count` by `1`
  - repeat above steps until `n` is no longer greater than `2` (this means we have reached the maxium rotation of the input)

- return `all_digits` converted to an integer

__________________________________________________

=end

#_________________________________________________

#* C - Code

# slice all elements from second to last, then append the first at the end
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# rotate the last `n` digits of a number, i.e., starting from the `-n` position
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join # this has been modified from the previous problem
end

def max_rotation(number)
  n = number.to_s.size
  number = rotate_rightmost_digits(number, n) # initial rotation
  all_digits = number

  count = 0
  while n > 2
    fixed_digits = all_digits[0..count]
    n -= 1
    number = rotate_rightmost_digits(all_digits[-n..-1], n)
    all_digits = fixed_digits + number
    count += 1
  end

  all_digits.to_i
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

#_________________________________________________

# Optimized Solution
def max_rotation_v2(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end