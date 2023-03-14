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

Initialize a local variable called chars_arr and assign to the return value of calling chars on String input

Initialize a local variable called counter and assign to the Integer 0
Initialize a local variable called crunch_arr and assign to an empty Array literal

Iterate over elements in `chars_arr`:
  - If the current element is NOT equal to the next element
    - append the current element to `crunch_arr`
    - increment counter by 1
  - Otherwise
    - increment counter by 1
  - Repeat this step until counter is equal to the size of `chars_arr`

- Join `crunch_arr` to String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def crunch(string)
  chars_arr = string.chars.map { |chars| chars }
  counter = 0
  crunch_arr = []
  
  loop do
    if chars_arr[counter] != chars_arr[counter + 1]
      crunch_arr << chars_arr[counter]
      counter += 1
    else
      counter += 1
    end
    
    break if counter == chars_arr.size
  end

  crunch_arr.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

