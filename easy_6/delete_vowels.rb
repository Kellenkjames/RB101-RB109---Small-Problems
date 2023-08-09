=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an array of strings, return an array of the same string values, except with the vowels (a, e, i, o, u) removed.

input: array of strings
output: new array of strings
rules:
        - Explicit Requirements:
          - Return an array of the same string values, except with the (a, e, i, o, u) removed

        - Implicit Requirements:
          - Vowels should include uppercase and lowercase versions

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a constant variable called VOWELS and assign to the vowels in the alphabet (upper and lowecase)

Define a single method parameter: strings

Iterate over each string in `strings` and for each iteration:
  - delete vowels from the current string
end

- return new array of strings (with vowels removed)

__________________________________________________

=end

#_________________________________________________

#* C - Code

VOWELS = "aeiouAEIOU"

def remove_vowels(strings)
  strings.map { |string| string.delete VOWELS }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']