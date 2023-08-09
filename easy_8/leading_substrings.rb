=begin

* P - [Understanding the] Problem

Problem: Given a method, return a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

input: String
output: Array of strings
rules:
        - Explicit Requirements:
          - Return a list of all substrings that start at the beginning of the original string 
          - Order should be arranged from the shortest to longest substring

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize a local variable called substrings_arr and assign to an empty Array literal `[]`

- Initialize a loop method from `1` up to `string` size and for each iteration:
  - return a substring that starts at index `0` and has a length of `count`
- repeat this step until iterator reaches the end of the collection

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

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']