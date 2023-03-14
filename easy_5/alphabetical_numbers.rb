=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array of Integers between 0 and 19, return an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

input: Array of Integers
output: Array of Integers (original object)
rules:
        - Explicit Requirements:
          - Array of Integers will be sorted based on the English words for each number

        - Implicit Requirements:
          - 0 and 19 are inclusive

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

__________________________________________________

* D - Data Structure

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

__________________________________________________

* A - Algorithm

- Use an Array data structure to reference a list of English names
- Construct a sort call that sorts the numbers by each number's corresponding English name

__________________________________________________

=end

#_________________________________________________

#* C - Code

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
    numbers.sort_by { |number| NUMBER_WORDS[number] }
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
