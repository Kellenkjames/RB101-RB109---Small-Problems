=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string, return `true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise. Characters that are not alphabetic should be ignored.

input: string
output: boolean
rules:
        - Explicit Requirements:
          - Method takes a string and returns `true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise
          - Characters that are not alphabetic should be ignored

        - Implicit Requirements:
          - Empty string should return `true`
          - Non-alphabetic characters do not have uppercase versions

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Compare original string to uppercase version
- If the expression evaluates as "truthy"
  - return `true`
- Else
  - return`false`
end

All of the alphabetic characters are uppercase is true only if the string is not altered by converting it to all uppercase.

__________________________________________________

=end

#_________________________________________________

#* C - Code

def uppercase?(string)
  string == string.upcase
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

#_________________________________________________

# Further Exploration: Food for thought: in our examples, we show that uppercase? should return `true` if the argument is an empty string. Would it make sense to return `false` instead? Why or why not?

=begin

* It wouldn't make sense to return `false` if the argument is an empty string. An empty string is a non-alphabetical character. The method should only return `false` if all the alphabetical characters in the string are uppercase.

In this case, a non-alphabetical character does not fit the criteria of an alphabetical character.

=end