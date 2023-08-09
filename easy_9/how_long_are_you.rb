=begin

* P - [Understanding the] Problem

Problem: Given a method which takes a string as an argument, return an Array that contains every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

input: String
output: Array of Strings
rules:
        - Explicit Requirements:
          - Return an Array that contains every word from the string (to which you have appended a space and the word length)

        - Implicit Requirements:
          - You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Split `string` into an array of words, iterate over each word, and for each iteration:
  - return the current `word` and size of `word`
- repeat the above step until all words have been processed

__________________________________________________

=end

#_________________________________________________

#* C - Code

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.size}" }
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []