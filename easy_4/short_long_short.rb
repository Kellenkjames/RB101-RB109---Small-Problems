=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two strings as arguments, determine the longest of the two strings, and then return the result of concatenating the shorter string, the longer string, and the shorter once again.

You may assume that the strings are of different lengths.

input: string(s)
output: new string
rules:
        - Explicit Requirements:
          - Method will take two strings as arguments
          - Determine the longest of the two strings and then return the result of concatenating the shorter string, the longer string, and the shorter string once again
          
        - Implicit Requirements:
          - You may assume that the strings are of different lengths

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define two method parameters: string_one, string_two

Initialize a local variable called shorter_string and assign to an empty string literal
Initialize a local variable called longer_string and assign to an empty string literal

- If `string_one` size is less then `string_two` size
  - `shorter_string` = `string_one`
  - `longer_string` = `string_two`
- Else
  - `shorter_string` = `string_two`
  - `longer_string` = `string_one`
end

shorter_string + longer_string + shorter_string

__________________________________________________

=end

#_________________________________________________

#* C - Code

def short_long_short(string_one, string_two)
  shorter_string = ''
  longer_string = ''

  if string_one.size < string_two.size
    shorter_string = string_one
    longer_string = string_two
  else
    shorter_string = string_two
    longer_string = string_one
  end

  shorter_string + longer_string + shorter_string
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# More Optimized Version
def short_long_short(string1, string2)
  string1.length < string2.length ? string1 + string2 + string1 : string2 + string1 + string2
end
