=begin

* P - [Understanding the] Problem

Problem: Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

input: String
output: Hash
rules:
        - Explicit Requirements:
          - Exclude non-letters when determining word size

        - Implicit Requirements:
          - N / A

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

__________________________________________________

* D - Data Structure

Hash {}

__________________________________________________

* A - Algorithm

Exclude non-letters when determining word size:

- Substitute String with new pattern to ignore non-letters while preserving whitespace

- Return new_arr

Continue with remaining sub-routines...

__________________________________________________

=end

#_________________________________________________

#* C - Code

def word_sizes(string)
  words_hsh = {}
  
  # Replace non-letters with "nothing"
  string = string.gsub(/[^\w\s]/, '')
  
end

p word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") # == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') # == {}