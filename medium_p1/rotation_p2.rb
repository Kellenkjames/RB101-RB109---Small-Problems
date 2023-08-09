=begin

* P - [Understanding the] Problem

Problem: Write a method that can rotate the last `n` digits of a number. For example:

input: two integers
output: single integer
rules:
        - Explicit Requirements:
          - Method will rotate the last 'n' digits of a number:
            - first argument: number
            - second argument: last `n` digits of a number

        - Implicit Requirements:
          - Rotating just 1 digits results in the original number being returned
          - Assume that 'n' is always a positive integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

* A rotation is moving the FIRST digit of the LAST 'n' digits to the end of the number:

Last `3` digits: 291
291 -> 2 gets moves to the end

Last `4` digits: 5291
2915 -> 5 gets moved to the end

Last `5` digits: 35291
52913 -> 3 gets moved to the end

Define two method parameters: number, digits

Initialize a local variable called all_digits and assign to the return value of number converted to string, then to an array of chars

Reassign the last `n` digits in `all_digits` to the return value of invoking the `rotate_array` helper method while passing in the last `n` digits in as an argument

convert `all_digits` to string and then to an Integer

__________________________________________________

=end

#_________________________________________________

#* C - Code

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917