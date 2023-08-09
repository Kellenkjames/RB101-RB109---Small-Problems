=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a non-empty string argument, return the middle character or middle characters of the argument.

If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

input: string
output: new string
rules:
        - Explicit Requirements:
          - Return the middle or middle characters of the argument
          - If the argument has an odd length:
            - return exactly one character
          - Else
            - return exactly two characters

        - Implicit Requirements:
          - New string object will be returned

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

In Ruby, using / for division with two integers performs floor division therefore, for an odd-length string, middle_index will point to the middle character (since indices are 0-based) and for an even-length string, middle_index will point to the second character of the middle pair

Initialize a local variable named `middle_index` to `string` length divided by `2`

- If `string` length is odd:
  - return substring of `string` using `middle_index` as an argument passed to the method
- Else
  - return 2 characters from `middle_index` minus 1
end



__________________________________________________

=end

#_________________________________________________

#* C - Code

def center_of(string)
  middle_index = string.length / 2
  string.length.odd? ? string[middle_index] : string[(middle_index - 1), 2]
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'