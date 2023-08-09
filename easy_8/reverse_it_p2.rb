=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one argument, a string containing one or more words, return the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

input: a String (containing one or more words)
output: a new String
rules:
        - Explicit Requirements:
          - Return the given string with words that contain five or more characters reversed
          - Each string will consist of only letters and spaces
          - Spaces should be included only when more than one word is present

        - Implicit Requirements:
          - New string should maintain the original letter casing

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts reverse_words('Professional')                        # => lanoisseforP
puts reverse_words('Walk around the block')       # => Walk dnuora the kcolb
puts reverse_words('Launch School')                    # => hcnuaL loohcS

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Split `string` into an array of substrings, iterate over substrings, and for each iteration:
  - If current `substring` has more 5 or more characters
    - reverse `substring`
  - Else
    - return `substring`
  end

join Array of substrings to new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def reverse_words(string)
  string.split.map do |substring|
    substring.size >= 5 ? substring.reverse : substring
  end.join(' ')
end

reverse_words('Professional') == 'lanoisseforP'
reverse_words('Walk around the block') == 'Walk dnuora the kcolb'
reverse_words('Launch School') == 'hcnuaL loohcS'