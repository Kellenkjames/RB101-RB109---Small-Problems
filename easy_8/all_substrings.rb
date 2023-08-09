=begin

* P - [Understanding the] Problem

Problem: Given a method, return a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins.

This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

input: String
output: Array of Strings
rules:
        - Explicit Requirements:
          - Returned list should be ordered by where in the string the substring begins
            - all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on.

        - Implicit Requirements:
          - You may (and should) use the leading_substrings method you wrote in the previous exercise

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define the `leading_substrings` method (same from previous implementation). This method accepts a string and returns all leading substrings starting from the beginning of that string.

Define a single method parameter: string

Initialize an empty array substrings_arr to store all the substrings we find

- Iterate over the characters in the string using their indices (from `0` to `string.size - 1`).
  - for each index:
    - create a substring that starts from the current index to the end of the string (string[start_index...])
  - pass the above substring to the `leading_substrings` method to get all leading substrings
- repeat these steps until there are no leading substrings remaining, i.e., only `1` string

return `substrings_arr`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def leading_substrings(string)
  substrings_arr = []
  1.upto(string.size) do |count|
    substrings_arr << string.slice(0, count)
  end
  substrings_arr
end

def substrings(string)
  substrings_arr = []
  (0...string.size).each do |start_index|
    substrings_arr.concat(leading_substrings(string[start_index..]))
  end
  substrings_arr
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]