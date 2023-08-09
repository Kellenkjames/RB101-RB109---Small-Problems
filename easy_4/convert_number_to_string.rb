=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a positive integer or zero, convert it to a string representation.

input: integer
output: string
rules:
        - Explicit Requirements:
          - Method takes a positive integer or zero and converts it to a string representation
          
        - Implicit Requirements:
          - You cannot use any of the standard conversion methods available in Ruby, such as `Integer#to_s`, `String()`, `Kerneal#format`, etc.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

__________________________________________________

* D - Data Structure

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Initialize a local variable called result and assign to an empty string literal ''

- Initialize a loop method and for each iteration:
  - Use parallel assignment to initialize the local variables number and remainder to the following:
    - `number` is assigned to the `number` / 10
    - `remainder` is assigned the remainder of the division operation
    -  prepend the `remainder` to `result`
  - repeat these steps until `number` is equal to `0`

  return `result`

__________________________________________________

=end

#_________________________________________________

#* C - Code

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10) # => [432, 1]
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'