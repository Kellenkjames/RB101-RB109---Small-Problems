=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a single integer as an argument, return the next featured number that is greater than the argument. Return an error message if there is no next featured number.

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - A featured number is an ODD number that is a multiple of `7` AND the digits in the number occur exactly once, i.e., `49` but not `133`
        
        - Implicit Requirements:
          - Write a custom error message if there is no next featured number

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Multiples of 7: 14, 21, 28, 35, 42, 49, 56, 63, 70, etc.

Define a single method parameter: number

* Return the first odd multiple of 7 (21) if number is less than 21
* Return error message if input size is larger than 10 (means there is no next featured number)

Initialize a local variable called featured_number and assign to `number`

1. If the input number is even, add 1 to it, making it odd
- If `featured_number` is even
  - add 1 to `featured_number`
- end

2. If the modified input number is not a multiple of 7, keep adding 2 (maintaining the oddness) until you reach the next multiple of `7`.
- Initialize a simple loop and for each iteration: 
  - add `2` to `featured_number` until the next multiple of `7` is reached
- end

#* From this point onward, you can increment by 14 to check the next possible featured number
Initialize a simple loop and for each iteration:
  - increment `featured_number` by `14`
  - If `featured_number` is a multiple of `7` AND has no digits that occur more than once
    - break from loop
  - end
- repeat the above steps until the next featured number is found

return `featured_number`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def featured(number)
  return 21 if number < 21 # returns the first odd multiple of 7
  return 'There is no possible number that fulfills those requirements.' if number.to_s.size >= 10

  featured_number = number
  featured_number += 1 if featured_number.even? # make number odd

  while featured_number % 7 != 0 # maintain oddness until next multiple of `7`
    featured_number += 2
  end

  loop do
    featured_number += 14
    digits_arr = featured_number.digits
    break if digits_arr.none? { |digit| digits_arr.count(digit) > 1 }
  end

  featured_number
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements