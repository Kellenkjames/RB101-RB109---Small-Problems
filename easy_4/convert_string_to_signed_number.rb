=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a String of digits, return the appropriate number as an integer. The String may have a leading `+` or `-` sign; if the first character is a `+`, the method should return a positive number; if it is a `-`, the method should return a negative number. If no sign is given, the method should return a positive number.

input: string
output: integer
rules:
        - Explicit Requirements:
          - Method takes a String of digits, returns the appropriate number as an integer
          - String may have a leading `+` or `-` sign:
          - If the first character is a `+`, the method should return a positive number
          - If the first character is a `-`, the method should return a negative number
          - If no sign is given, the method should return a positive number

        - Implicit Requirements:
          - You may assume the string will always contain a valid number
          - You may not use any of the standard conversion methods available in Ruby, such as `String#to_i`, `Integer()`, etc.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

__________________________________________________

* D - Data Structure

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

__________________________________________________

* A - Algorithm

# Import `string_to_integer` method from previous exercise:

Define a single method parameter: string

- Initialize a local variable called sanitized_string and assign to the following:
  - If the first character in `string` is either a '-' or '+'
    - return substring at index `1` to the end of the string
  - Else
    return `string`
  end

- Initalize a local variable called signed_number and assign to the method invocation of `string_to_integer` while passing `sanitized_string` in as an argument

- If the first character of `string` is equal to `-`
  - return the negative version of `signed_number`
- Else
  - return `signed_number`
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  string.chars.map do |char|
    DIGITS[char]
  end.inject { |sum, n| sum * 10 + n }
end

def string_to_signed_integer(string)
  sanitized_string = if string[0] == '-' || string[0] == '+'
    string[1..-1] # use string slicing to skip the first character
  else
    string
  end
  
  signed_number = string_to_integer(sanitized_string)

  string[0] == '-' ? -(signed_number) : signed_number
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100