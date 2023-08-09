=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array of Integers between 0 and 19, returns an Array of those Integers sorted based on the English words for each number:

input: array
output: new array (sorted)
rules:
        - Explicit Requirements:
          - Method takes an Array of Integers between 0 and 19
          - Return an Array of those Integers sorted based on the English words for each number

        - Implicit Requirements:
          - Sort based on the english word (length) for each number

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

__________________________________________________

* D - Data Structure

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

__________________________________________________

* A - Algorithm

Define a single method parameter: numbers

- Sort `numbers` by passing a block to the method as an argument:
  - Inside the block:
    - sort `NUMBER_WORDS` by the current `number` in `numbers`
  end
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by! { |number| NUMBER_WORDS[number] }
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

#_________________________________________________

# Further Exploration:

=begin

* Why do you think we didn't use Array#sort_by! instead of Enumerable#sort_by?

Mutating vs Non-Mutating Methods

Array#sort_by! is a destructive method that mutates the original object. In this case, we want to be able to sort while maintaining the order of the original object. If we call Array#sort_by! the order of the input will be mutated.

Using `Enumerable#sort_by` allows you to create a new sorted array without modifying the original object, which is typically what you want unless you have a specific reason to modify the original array.

=end

#_________________________________________________

# Rewrite the method to use Enumerable#sort

def alphabetic_number_sort_v2(numbers)
  numbers.sort { |a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b] }
end

alphabetic_number_sort_v2((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]