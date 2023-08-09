=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a sentence string as input, return the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

input: String
output: modified version of the original string
rules:
        - Explicit Requirements:
          - Return the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits

        - Implicit Requirements:
          - Modify the original string (don't return a new string)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

__________________________________________________

* D - Data Structure

DIGITS_HASH = {
  'zero' => '0', 'one' => '1', 'two ' => '2',
  'three' => '3', 'four' => '4', 'five' => '5',
  'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9',
}

__________________________________________________

* A - Algorithm

Initialize a constant called DIGITS_HASH and assign to the following hash: {
  'zero' => '0', 'one' => '1', 'two ' => '2',
  'three' => '3', 'four' => '4', 'five' => '5',
  'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

Define a single method parameter: sentence

- Iterate over keys in `DIGITS_HASH` and for each iteration:
  - If the current word in `sentence` matches key in `DIGITS_HASH`
    - replace `word` with the corresponding value (we are looking for an exact match)
  - end
- repeat the above step until all substrings have been processed in `sentence`

__________________________________________________

=end

#_________________________________________________

#* C - Code

DIGITS_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2',
  'three' => '3', 'four' => '4', 'five' => '5',
  'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(sentence)
  DIGITS_HASH.each do |word, value|
    sentence.gsub!(/\b#{word}\b/, value)
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'