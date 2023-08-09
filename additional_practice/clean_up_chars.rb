=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string as input, return a new string with all non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (i.e., the result should never have consecutive spaces).

input: string
output: new string
rules:
        - Explicit Requirements:
          - Method takes a string as input, returns a new string with all non-alphabetic characters replaced by spaces.
          - If one or more non-alphabetic characters occur in a row, there should onle be one space in the result

        - Implicit Requirements:
          - There should never be consecutive spaces

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Casess

clean_up("What's my +*& line?") == "What s my     line "
clean_up("-->>hello<<<--") == "    hello     "
clean_up("Hello, how are you doing today?") == "Hello  how are you doing today "
clean_up("     ") == " "
clean_up("Hello... World!") == "Hello   World "
clean_up("") == ""

In each of these test cases, non-alphabetic characters are replaced with spaces and sequences of non-alphabetic characters are replaced with a single space.

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Initialize a local variable called non_alphabetical_char and assign to regex pattern for non-alphabetical characters

- Convert string to an array of chars:
- Iterate over the array of chars:
  - If the current char matches a non-alphabetical character
    - return whitespace character
  - Else
    - return current char
end

- Join the array of chars back to a new string object
- Substitute two or more whitespace character with a single space character 

__________________________________________________

=end

#_________________________________________________

#* C - Code

def clean_up(string)
  non_alphabetical_char = /[^a-zA-Z]/
  string.chars.map do |char|
    char.match?(non_alphabetical_char) ? ' ' : char
  end.join.gsub(/\s+/, ' ').strip
end

puts clean_up("---what's my +*& line?") == 'what s my line'
puts clean_up("Hello there! How's it going?") == 'Hello there How s it going'
puts clean_up("**WOW** Without a doubt, interesting  stuff!") == 'WOW Without a doubt interesting stuff'
puts clean_up("...I'm not really sure what to put here...") == 'I m not really sure what to put here'
puts clean_up(" ") == ''
puts clean_up(".......") == ''
