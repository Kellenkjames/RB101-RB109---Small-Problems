=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string, return a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

input: string
output: new String
rules:
        - Explicit Requirements:
          - Return a new string in which every consonant character is doubled
          - Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled

        - Implicit Requirements:
          - Empty string should return an empty string

        - Clarifying Questions:
          - What is a consonant character?
            - most letters of the English alphabet are consonants, except for a, e, i, o, u, which are vowels

__________________________________________________

* E - Examples / Test Cases

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Initialize a constant variable called CONSONANTS and assign to an array of consonants

Define a single method parameter: string

- Convert `string` to an array of chars, iterate over chars, and for each iteration:
  - If current downcased version of `char` is included in `CONSONANTS`
    - multiply the current `char` by `2`
  - Else
    return current `char`
  end

- return Array and join to a new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""