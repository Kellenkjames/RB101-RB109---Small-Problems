=begin

* P - [Understanding the] Problem

Problem: Modify the `words_sizes` method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

input: string
output: hash
rules:
        - Explicit Requirements:
          - Modify the `words_sizes` method from the previous exercise to exclude non-letters when determining word size

        - Implicit Requirements:
          - Ignore non-alphabetic characters when counting words size

        - Clarifying Questions:
          - N/A

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

The hash will contain all unique word sizes as keys, with their counts as the corresponding values

Define a single method parameter called string_of_words:

Initialize a local variable called word_counts and assign to a new Hash with a default value of `0`

- Split `string_of_words` to an array of substrings and iterate over each word:
  - Inside the block:
    - Initialize a local variable called clean_word and assign to `word` with non-alphabetic chars removed
    - access the current element in `words_counts` by size if it exists or create a new key-value pair if it doesn't
    - if the current element doesn't exist, increase the value associated with the `clean_word_size` key in `word_counts` by `1`
  end
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def word_sizes(string_of_words)
  word_counts = Hash.new(0)
  string_of_words.split.each do |word|
    clean_word = word.delete('^a-zA-z')
    word_counts[clean_word.size] += 1
  end
  word_counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}