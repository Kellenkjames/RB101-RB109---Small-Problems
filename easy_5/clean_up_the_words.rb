=begin

* P - [Understanding the] Problem

Problem: Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces.

If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

input: string
output: string
rules:
        - Explicit Requirements:
          - Return a new string with all of the non-alphabetic characters replaced by spaces
          - If one or more non-alphabetic characters occur in a row, you should only have one space in the result

        - Implicit Requirements:
          - The result should never have consecutive spaces

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

cleanup("---what's my +*& line?") == ' what s my line '

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Initialize a constant variable called ALPHABET and assign to an array of alphabetical letters (lowercased)

Define a single method parameter: words

Initialize a local variable called cleaned_chars and assign to an empty array literal

- Convert `words` to an array of chars and iterate over each char:
  - If ALPHABET includes the current `char`
    - append `char` to `cleaned_chars`
  - Else
    - append empty space only if the last character added to `cleaned_chars` was not an empty space
  end
end

join `cleaned_chars` to string

__________________________________________________

=end

#_________________________________________________

#* C - Code

ALPHABET = ('a'..'z').to_a

def cleanup(words)
  cleaned_chars = []

  words.chars.each do |char|
    if ALPHABET.include?(char)
      cleaned_chars << char
    else
      cleaned_chars << ' ' unless cleaned_chars.last == ' '
    end
  end
  
  cleaned_chars.join
end

cleanup("---what's my +*& line?") == ' what s my line '

#_________________________________________________

# Version 2

def cleanup_v2(words)
  words.gsub(/[^a-z]/, ' ').squeeze(' ')
end

cleanup_v2("---what's my +*& line?") == ' what s my line '