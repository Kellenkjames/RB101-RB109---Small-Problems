=begin

* P - [Understanding the] Problem

Problem: A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits.

Double Numbers: `44`, `3333`, `103103`, `7676`
Not Double Numbers: 444, 334433, 107

Given a method, return 2 times the number provided as an argument, unless the argument is a doubler number; double numbers should be returned as-is.

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Return 2 times the number provided as an argument, unless the argument is a doubler number
          - Double numbers should be returned as-is

        - Implicit Requirements:
          - Ruby does not print the underscores when printing long numbers

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: number

Initialize a local variable called number_string and assign to the return value of converting `number` to string, i.e., '37'
Initialize a local variable called middle_point and assign to the return value of the size of `number` divided by `2`
Initialize a local variable called left_side_digits and assign to the left-side digits of `number_string`
Initialize a local variable called right_side_digits and assign to the right-side digits of `number_string`

- If the size of `number` is even AND `left_side_digits` is equal to `right_side_digits`
  - return `number` (as-is)
- Else
  - return `number * 2` (double number)
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def twice(number)
  number_string = number.to_s
  middle_point = number_string.size / 2
  left_side_digits = number_string[0, middle_point]
  right_side_digits = number_string[middle_point..-1]
  number_string.size.even? && (left_side_digits == right_side_digits) ? number : number * 2
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
