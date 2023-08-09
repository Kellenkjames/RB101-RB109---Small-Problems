=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

input: Array of Arrays
output: new Array
rules:
        - Explicit Requirements:
          - Convert grocery list (array) of fruits with quantities and convert it into an array of the correct number of each fruit

        - Implicit Requirements:
          - Array should list fruits in the corresponding order of the input

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: grocery_list

- Iterate over each subarray in `grocery_list` and for each iteration:
  - multiply the current `fruit` inside an array by `quantity`
- repeat the above step until all elements have been processed

- return an array of flattened objects returned by the block

__________________________________________________

=end

#_________________________________________________

#* C - Code

def buy_fruit(grocery_list)
  grocery_list.flat_map { |fruit, quantity| [fruit] * quantity }
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

#_________________________________________________

# Key Takeaway:

["apple"] * 3  #=> ["apple", "apple", "apple"]

# When an array is is multiplied by an integer `n`, it results in a new array where the original array is repeated `n` times. The brackets `[ ]` around `fruit` turn it into an array before the multiplication is performed.
