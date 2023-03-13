=begin

* P - [Understanding the] Problem

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetical characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces.

If one or more non-alphabetic characters occurs in a row, you should only have one space in the result (the result should never have consecutive spaces).

input: String
output: String (original object)
rules:
        - Explicit Requirements:
          - Method will return a String with all of the non-alphabetic characters replaced by spaces
          - If one or more non-alphabetic characters occur in a row - you should only have "one" space in the result
          
        - Implicit Requirements:
          - The result should never have consecutive spaces
          - String is case insensitive
          - non-alphabetic characters are the other characters on your keyboard that aren't letters or numbers, e.g. commas, brackets, space, asterisk and so on

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

Initialize a local variable called `arr` and assign to an empty Array literal []

- Iterate over each char in String:
  - For each iteration:
    - If `char` is a non-alphabetic character:
      - Reassign `char` to an empty string and push to `arr`
    - Else
      - push `char` to `arr`
    end
  - Repeat this step until all non-alphabetic characters have been replaced with empty spaces and pushed to `arr`

- Join the Array to a new String
- Using String substitution - find all instances of one or more empty spaces and replace with a single empty space

return new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def cleanup(string)
  arr = []
  
  string.each_char do |char|
    if !char.match(/[[:alpha:]]/)
      arr << char = ' '
    else
      arr << char
    end
  end
  
  arr.join.gsub(/[[:space:]]{1,}/, ' ')
end

cleanup("---what's my +*& line?") == ' what s my line '


