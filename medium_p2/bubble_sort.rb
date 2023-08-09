=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array as an argument, sort the Array using the bubble sort algorithm. Your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared.

If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

input: Array
output: Modified version of the original Array
rules:
        - Explicit Requirements:
          - Sort will be in place; mutate the Array passed as an argument
          - If first of two elements is greater than the second, the two elements are swapped
          - Repeat swapping process until a complete pass is made without performing any swaps

        - Implicit Requirements:
          - Cannot use built-in sort method
          - You may assume that the Array contains at least 2 elements

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: array

- Initialize an outer loop and for each iteration:
  - initialize a local variable called swapped and assign to the boolean false (default)
  - initialize an inner loop that start from 0 and goes to the length of `array` less 1, and for each iteration:
    - If the current element is greater than the subsequent element
      - swap the current element with the subsequent element (in place)
      - reassign `swapped` to true
    - end
  - repeat the above steps unless `swapped` is assigned to true
- repeat the above steps until a complete pass is made without performing any swaps

__________________________________________________

=end

#_________________________________________________

#* C - Code

def bubble_sort!(array)
  loop do
    swapped = false
    (0...array.length - 1).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    
    break unless swapped # break from loop unless swapped is true
  end
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)