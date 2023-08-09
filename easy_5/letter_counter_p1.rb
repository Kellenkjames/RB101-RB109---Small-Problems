=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string with one or more space separated words, return a hash that shows the number of words of different sizes. 

Words consist of any string of characters that do not include a space.

input: string
output: hash
rules:
        - Explicit Requirements:
          - Return a hash that shows the number of words of different sizes

        - Implicit Requirements:
          - Words consist of any string of characters that do not include a space

        - Clarifying Questions:
          - N/A

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

The hash will contain all unique word sizes as keys, with their counts as the corresponding values

Define a single method parameter called string_of_words:

Initialize a local variable called word_counts and assign to a new Hash with a default value of `0`

- Split `string_of_words` to an array of substrings and iterate over each word:
  - Inside the block:
    - access the current element in `words_counts` by size if it exists or create a new key-value pair if it doesn't
    - if the current element doesn't exist, increase the value associated with the `word_size` key in `word_counts` by `1`
  end
end

return word_counts

* Incrementing the count each time a word of that size is encountered

__________________________________________________

=end

#_________________________________________________

#* C - Code

def word_sizes(string_of_words)
  word_counts = Hash.new(0)
  string_of_words.split.each do |word|
    word_counts[word.size] += 1
  end
  word_counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}