=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading `+` or `-` sign; if the first character is a `+`, your method should return a positive number; if it is a `-`, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

input: String
output: Integer
rules:
        - Explicit Requirements:
          - The String may have a leading `+` or `-`
          - If the first character is a `+`, your method should return a positive number
          - If the first character is a `-`, your method should return a negative number
          - If no sign is given, you should return a positive number

        - Implicit Requirements:
          - The string will always contain a valid number

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- If first index of `string` is equal to `-`
  - - + convert_string_to_number method invocation
- Else
  - convert_string_to_number method invocation
end
__________________________________________________

=end

#_________________________________________________

#* C - Code

def string_to_integer(string)
  arr = string.chars.map { |substring| substring.oct }
  arr.inject{ |accumulator, digit| (accumulator * 10) + digit }
end

def string_to_signed_integer(string)
  if string[0] == '-'
    - + string_to_integer(string)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('+ 4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100