=begin

* P - [Understanding the] Problem

Problem: Given a method, return the next to last word in the String passed to it as an argument. Words are any sequence of non-blank characters. You may assume that the input String will always contain at least two words.

input: string
output: string
rules:
        - Explicit Requirements:
          - Return the next to last word in the String
          - Words are any sequence of non-blank characters

        - Implicit Requirements:
          - You can assume that the input String will always contain at least two words

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Split `string` into an array of substrings and iterate over each substring:
  - return the second to last element in the array (via index)
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def penultimate(string)
  string.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

#_________________________________________________

# Further Exploration: Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

def penultimate_v2(string)
  return string if string.size <= 1
  words_array = string.split
  middle_index = (words_array.size - 1) / 2
  words_array[middle_index]
end

penultimate_v2(' ') == ' '
penultimate_v2('hello') == 'hello'
penultimate_v2('hello world testing midnight time cool') == 'testing'
penultimate_v2('hello world testing midnight time cool dark') == 'midnight'