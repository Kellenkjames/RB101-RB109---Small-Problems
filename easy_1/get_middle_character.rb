# Get Middle Character

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

input: string
output: string
rules:
        - Explicit Requirements:
          - method takes a non-empty string argument
          - returns the middle characters of the argument
          - if the argument has an odd length
            - return exactly one character
          - otherwise, argument has an even length
            - return exactly two characters

        - Implicit Requirements:
            - argument must be a non-empty string

__________________________________________________

* E - Examples / Test Cases

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

__________________________________________________

=end