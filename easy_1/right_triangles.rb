# Right Triangles

=begin

* P - [Understand the] Problem

PROBLEM:

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose rows each have n stars. The hypotenuse of the triangle (the diagonal side in the images below)should have one end at the lower-left of the triangle, and the other end at the upper-right.

- input: integer
- output: string
- rules:
        Explicit Requirements:
        - method takes a positive integer, n, as an argument
        - displays a right triangle whose "rows" each have "n" stars
        - hypotenuse of the triangle (diagonal side) should have:
          - one end at the lower-left of the triangle
          - other end at the upper-right

        Implicit Requirements:
        - integer must be positive
        - integer represents:
          - total row count

__________________________________________________

* E - Examples / Test Cases

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

__________________________________________________

* D - Data Structure

Array(5)

[
  ["", "", "", "", *]          4 spaces,    1 star
  ["", "", "", *, *]           3 spaces,    2 stars
  ["", "", *, *, *]            2 spaces,    3 stars
  ["", *, *, *, *]             1 space,      4 stars
  [*, *, *, *, *]              0 spaces,    5 stars
]

__________________________________________________

* A - Algorithm

- Initialize an empty array and assign to variable called arr
- Iterate as many times as the number argument:
  - print stars for each row:
    - rows = '*' * number
    - arr << rows
  - Iterate over the arr:
    - Replace stars with empty spaces (descending order)
    - 

end

arr
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def triangle(number)
  arr = []
  
  counter = 0
  loop do
    counter += 1
    rows = '*' * counter
    arr << rows
    break if counter == number
  end

  counter_two = 0
  empty_spaces = number
  loop do
    empty_spaces -= 1
    empty_spaces_multiplier = ' ' * empty_spaces
    arr[counter_two].prepend(empty_spaces_multiplier)
    counter_two += 1
    break if counter_two == number
  end

puts arr
end

triangle(5)