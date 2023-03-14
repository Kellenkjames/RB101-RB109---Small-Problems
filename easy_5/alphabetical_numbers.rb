=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array of Integers between 0 and 19, return an Array of those Integers sorted based on the English words for each number:

Ex) zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Translation: Sort the array based on the English words for each number

input: Array of Integers
output: Array of Integers (new object)
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

Hash {}

ALPHABETICAL_NUMBERS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

__________________________________________________

* A - Algorithm

Initialize a local variable called values_arr and assign to an empty Array literal []
Initialize a local variable called keys_arr and assign to an empty Array literal []

- Iterate over the Arrry of Integers input represented by the local variable `numbers_arr`:
  - For each iteration:
    - Append the value of `number` in`ALPHABETICAL_NUMBERS` to`values_arr`
  - Repeat this step until all values in`ALPHABETICAL_NUMBERS` have been appended to `values_arr`

- Iterate over the `values_arr` collection and sort values: 
  - For each iteration: 
    - Append the key of `word` in`ALPHABETICAL_NUMBERS` to`keys_arr`
  - Repeat this step until all keys in`ALPHABETICAL_NUMBERS` have been appended to `keys_arr`

- return `keys_arr`

__________________________________________________

=end

#_________________________________________________

#* C - Code

ALPHABETICAL_NUMBERS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

def alphabetic_number_sort(numbers_arr)
  values_arr = []
  keys_arr = []
  
  numbers_arr.each do |number|
    values_arr << ALPHABETICAL_NUMBERS[number]
  end
  
  values_arr.sort.each do |word|
    keys_arr << ALPHABETICAL_NUMBERS.key(word)
  end

  keys_arr
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
