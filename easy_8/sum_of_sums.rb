=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array of numbers, return the sum of the sums of each leading index for that Array. You may assume that the Array always contains at least one number.

input: Array of numbers
output: Integer
rules:
        - Explicit Requirements:
          - Return the sum of the sums of EACH leading index for that Array

        - Implicit Requirements:
          - You may assume that the Array always contains at least one number

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: numbers

Initialize `sum_total` to the integer `0`

- Iterate over `numbers` and for each number, from `1` to the size of the `numbers` array do the following:
  - return a subarray from `numbers` that starts at index `0` and is `count` elements long
  - sum the numbers in the subarray and add to `sum_total`
- repeat the following steps until the iterator reaches the end of the collection

return `sum_total`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

#_________________________________________________

