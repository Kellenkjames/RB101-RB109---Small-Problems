=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string, return a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

input: String
output: Hash
rules:
        - Explicit Requirements:
          - Method will return a hash that contains 3 entries:
            - 1) percentage of characters that are lowercase letters
            - 2) percentage of characters that are uppercase letters
            - 3) percentage of characters that are neither

        - Implicit Requirements:
          - You may assume the string will always contain at least one character

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

__________________________________________________

* D - Data Structure

Hash {}

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize a local variable called string_hsh and assign to an empty Hash literal `{}`
Initialize a local variable called string_size and assign to the return value `string` size

* Mini-problem: Determine the number of lowercase letters
Initialize a local variable called lowercase_letters and assign to count of lowercase letters in `string`

* Mini-problem: Determine the number of uppercase letters
Initialize a local variable called uppercase_letters and assign to count of uppercase letters in `string`

* Mini-problem: Determine the number of lowercase letters
Initialize a local variable called non_alphanumeric and assign to count of non-alphanumeric chars in `string`

* Mini-problem: Calculate the percentage(s)
Initialize a local variable called lowercase_percentage and assign to the return value of dividing lowercase_letters (converted to floating point number) by string_size, then multiply by `100`

Initialize a local variable called uppercase_percentage and assign to the return value of dividing lowercase_letters (converted to floating point number) by string_size, then multiply by `100`

Initialize a local variable called non_alphanumeric_percentage and assign to the return value of dividing lowercase_letters (converted to floating point number) by string_size, then multiply by `100`

* Return hash
assign :lowercase as key in `string_hsh` and assign `lowercase_percentage` as value
assign :uppercase as key in `string_hsh` and assign `uppercase_percentage` as value
assign :neither as key in `string_hsh` and assign `non_alphanumeric_percentage` as value

__________________________________________________

=end

#_________________________________________________

#* C - Code

def letter_percentages(string)
  string_hsh = {}
  string_size = string.size
  
  lowercase_letters = string.scan(/[a-z]/).size
  uppercase_letters = string.scan(/[A-Z]/).size
  non_alphanumeric = string.scan(/[^a-zA-Z]/).size
  
  lowercase_percentage = ((lowercase_letters.to_f / string_size) * 100).round(1)
  uppercase_percentage = ((uppercase_letters.to_f / string_size) * 100).round(1)
  non_alphanumeric_percentage = ((non_alphanumeric.to_f / string_size) * 100).round(1)

  string_hsh[:lowercase] = lowercase_percentage
  string_hsh[:uppercase] = uppercase_percentage
  string_hsh[:neither] = non_alphanumeric_percentage

  string_hsh
end

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }