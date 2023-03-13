=begin

* P - [Understanding the] Problem

Problem: Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

input: Two strings
output: New String object
rules:
        - Explicit Requirements:
          - Method will take two strings as arguments
          - Determines the longest of the two strings
          - Returns the result of concatenating the shorter string, the longer string, and the shorter string once again

        - Implicit Requirements:
          - Both string arguments will have different lengths

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

Determine which string is the longest of two strings:

def short_long_short(str_one, str_two)
  - if str_one.size > str_two.size
    str_two + str_one + str_two
  - else
    str_one + str_two + str_one
  end
end
__________________________________________________

=end

#_________________________________________________

#* C - Code

def short_long_short(str_one, str_two)
  if str_one.size > str_two.size
    str_two + str_one + str_two
  else
    str_one + str_two + str_one
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
