=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an integer, conver it to a string representation.

input: integer
output: string
rules:
        - Explicit Requirements:
          - Extend the method from the previous exercise by adding the ability to represent negative numbers as well

        - Implicit Requirements:
          - You cannot use any of the standard conversion method available in Ruby such as `Integer#to_s`, `String()`, `Kernel#format`, etc.
          - You can use the integer_to_string from the previous exercise

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

__________________________________________________

* D - Data Structure

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

__________________________________________________

* A - Algorithm

Extend functionality from previous method integer_to_string:

Define a single method parameter: number

- Initialize a local variable named num_absolute and assign to the absolute value of `number`

If `number` is less than `0`
  - call the `integer_to_string` method while passing in `num_absolute` as an an argument, prepend '-' to the return value of the method
Elsif `number` is greater than `0`
  - call the `integer_to_string` method while passing in `num_absolute` as an an argument, prepend 
  '+' to the return value of the method
Else
  - call the `integer_to_string` method
end

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

def signed_integer_to_string(number)
  number_absolute = number.abs
  number_as_string = integer_to_string(number_absolute)
  if number < 0
    number_as_string.prepend('-')
  elsif number > 0
    number_as_string.prepend('+')
  else
    number_as_string
  end
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'