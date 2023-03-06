=begin

* P - [Understanding the] Problem

Problem: Write a method that takes an Array of numbers, and returns an Array with the same elements, and each element has the running total from the original Array. A running total is the sum of all values in a list up to and including the current element.

Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).

input: Array
output: Array (new object)
rules:
        - Explicit Requirements:
          - Returned Array must include the same number of elements as the original Array
          - Each element has the running total from the original Array
          - A running total is the sum of all values in a list up to and including the current element

        - Implicit Requirements:
          - An empty Array input should return an empty Array

        - Clarifying Questions:
          -  N / A

__________________________________________________

* E - Examples / Test Cases

running_total([10, 15]) == [10, 25]
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm:

Define a method that accepts a paramter called arr

Initialize a local variable called `counter` and assign to 1
Initialize a local variable called `index` and assign to 1

- If arr size is greater than or equal to 2:
  - Iterate over the elements in the collection:
    - Reassign the 2nd index of the array to the return value of the 2nd index + (2nd index - 1)
    - Increment `counter` by 1
    - Increment `index` by 1
    - break from the loop when counter equals array size

- return arr
__________________________________________________

=end

#_________________________________________________

#* C - Code

def running_total(arr)
  counter = 1
  index = 1

  if arr.size >= 2
    loop do
      arr[counter] += arr[index - 1]
      counter += 1
      index += 1
      break if counter == arr.size
    end
  end

  arr
end

p running_total([10, 15]) == [10, 25]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []