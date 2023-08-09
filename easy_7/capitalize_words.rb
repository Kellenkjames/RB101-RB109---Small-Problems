=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a single String argument, return a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

input: string
output: new string
rules:
        - Explicit Requirements:
          - Return a new string that contains the original value of the argument with:
            - first character of every word capitalized
            - all other letters lowercase

        - Implicit Requirements:
          - You may assume that words are any sequence of non-blank characters

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Downcase `string`, split to an array of substrings, and iterate over each substring:
  - for each iteration:
    - capitalize the first character in the current `word`
  - repeat the above step until iterator reaches the end of the collection

  - join array of substrings to a new String (separated by whitepace delimiter)

__________________________________________________

=end

#_________________________________________________

#* C - Code

def word_cap(string)
  string.downcase.split(' ').map do |word|
    word.capitalize
  end.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

#_________________________________________________

# Further Exploration: Ruby conveniently provides the `String#capitalize` method to capitalize strings. Without that method, how would you solve this problem? Try to come up with at least two solutions.

ALPHABET_HSH = {
  'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 'f' => 'F',
  'g' => 'G', 'h' => 'H', 'i' => 'I', 'j' => 'J', 'k' => 'K', 'l' => 'L',
  'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P', 'q' => 'Q', 'r' => 'R',
  's' => 'S', 't' => 'T', 'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X',
  'y' => 'Y', 'z' => 'Z'
}

def word_cap_v2(string)
  string.downcase.split(' ').map do |word|
    word[0].match(/[a-z]/) ? word.sub(/\A./, ALPHABET_HSH[word[0]]) : word 
  end.join(' ')
end

word_cap_v2('four score and seven') == 'Four Score And Seven'
word_cap_v2('the javaScript language') == 'The Javascript Language'
word_cap_v2('this is a "quoted" word') == 'This Is A "quoted" Word'

#_________________________________________________

def word_cap_v3(string)
  string.downcase.split(' ').map do |word|
    if word[0].match(/[a-z]/)
      word[0] = (word[0].ord - 32).chr
    end
    word
  end.join(' ')
end

word_cap_v3('four score and seven') == 'Four Score And Seven'
word_cap_v3('the javaScript language') == 'The Javascript Language'
word_cap_v3('this is a "quoted" word') == 'This Is A "quoted" Word'