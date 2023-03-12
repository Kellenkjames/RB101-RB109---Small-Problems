=begin

* P - [Understanding the] Problem

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetical characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occurs in a row, you should only have one space in the result (the result should never have consecutive spaces).

input: String
output: String (original object)
rules:
        - Explicit Requirements:
          - Method will return a String with all of the non-alphabetic characters replaced by spaces
          - If one or more non-alphabetic characters occur in a row - you will have "one" space in the result
          
        - Implicit Requirements:
          - The result should never have consecutive spaces
          - String is case insensitive
          - Non-Alphanumeric characters are the other characters on your keyboard that aren't letters or numbers, e.g. commas, brackets, space, asterisk and so on.

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

cleanup("---what's my +*& line?") == ' what s my line '

__________________________________________________

* D - Data Structure

# => Array []

__________________________________________________

* A - Algorithm

char.match(/^[[:alpha:]]$/)

- Split the String input into an Array of substrings
- Split each Array of substrings into chars
  - Iterate over the collection of chars:
    - For each iteration, assign the current element to an empty space if the element is a non-alphanumeric char
  - Repeat this step until all non-alphanumeric chars have been repalced with empty spaces
  
  - Join Array of substrings to String
  - Substitute two or more empty spaces with single empty space
  - Return String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def cleanup(string)
  string = string.split(' ').map do |substring|
    substring.chars.map do |char|
      !char.match(/[[:alpha:]]/) ? char = ' ' : char
    end
  end
  # string.join.gsub(/[[:space:]]{2,}/, ' ')
end

p cleanup("---what's my +*& line?")    # == ' what s my line '
# p cleanup("---what's my +*& line?") # == ' what smy line '
