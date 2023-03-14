=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string argument, return a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

You may not use String#squeeze or String#squeeze!

input: String
output: String (new object)
rules:
        - Explicit Requirements:
          - Return new string that contains the value of the original string
          - All consecutive duplicate characters collapsed into a single character
          - You may not use String#squeeze or String#squeeze!

        - Implicit Requirements:
          - Empty string input returns empty string

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

__________________________________________________

* D - Data Structure

#Array[]

__________________________________________________

* A - Algorithm

Initialize a local variable called index and assign to the Integer 0
Initialize a local variable called crunch_text and assign to an empty String

Iterate over elements in `text`:
  - Append the current element to `crunch_text` unless the current element is equal to the next element
  - Iterate `index` by 1
  - Break from loop if `index` is equal to the size of `text`

- Return`crunch_text`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def crunch(text)
  index = 0
  crunch_text = ''
  
  loop do
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
    break if index == text.size
  end

  crunch_text
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''