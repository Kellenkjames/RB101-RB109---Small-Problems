=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string argument, return a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

You may not use `String#squeeze` or `String#squeeze!` 

input: string
output: new string
rules:
        - Explicit Requirements:
          - Method will return a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character

        - Implicit Requirements:
          - There should be no consecutive duplicate characters in the final string
          - You may not use `String#squeeze` or `String#squeeze!`

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize a local variable called chars_arr and assign to an empty Array literal `[]`

- Convert `string` to an array of chars and iterate over each char and index:
    - append current `char` to `chars_arr` unless the following element is equal to current `char`
end 

join chars_arr to new string object

__________________________________________________

=end

#_________________________________________________

#* C - Code

def crunch(string)
  chars_arr = []
  string.chars.each_with_index do |char, index|
    chars_arr << char unless string[index + 1] == char
  end
  chars_arr.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

#_________________________________________________

# Further Exploration: Solve the problem using regular expressions

def crunch_v2(string)
  string.gsub(/(.)\1+/, '\1')
end

crunch_v2('ddaaiillyy ddoouubbllee') == 'daily double'
crunch_v2('4444abcabccba') == '4abcabcba'
crunch_v2('ggggggggggggggg') == 'g'
crunch_v2('a') == 'a'
crunch_v2('') == ''