=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string (with one or more space separated words) - return a hash that shows the word size as the Key and the number of occurences as the Value. 

input: String
output: Hash
rules:
        - Explicit Requirements:
          - Return a hash that shows the number of words of different sizes

        - Implicit Requirements:
          - Key represents number of words
          - Value represents the number of times the word appears in the String
          - Words consist of any string of characters that do not include a space
          - Empty String will return an empty Hash

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

__________________________________________________

* D - Data Structure

Hash {}

__________________________________________________

* A - Algorithm

Initialize a local variable called words_hsh and assign to an empty Hash literal `{}`
Initialize a local variable called words_arr and assign to the return value of splitting String into an array of substrings

- Iterate over each substring in Array:
  - For each iteration:
    - Reassign the local variable`key` to the size of each substring
    - Reassign the local variable `value` to the count of each substring:
      - Call the block for each element and return a truthy value if element size is equal to `key`
    - Set `key` as the index of `words_hsh` and assign to `value`
  - Repeat this step until the Hash has the size of the word as the key and the count as the value for each substring

  - Sort hash --> returns a nested Array
  - Return the sorted Hash in hash format

__________________________________________________

=end

#_________________________________________________

#* C - Code

def word_sizes(string)
  words_hsh = {}
  words_arr = string.split(' ')
  
  words_arr.each do |substring|
    key = substring.size
    value = words_arr.count { |element| element.size == key }
    words_hsh[key] = value
  end

  words_hsh.sort.to_h
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}