# Right Triangles

=begin

* P - [Understand the] Problem

PROBLEM:

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below)should have one end at the lower-left of the triangle, and the other end at the upper-right.

- input: integer
- output: string
- rules:
        Explicit Requirements:
        - method takes a positive integer, n, as an argument
        - displays a right triangle whose "sides" each have "n" stars
        - hypotenuse of the triangle (diagonal side) should have:
          - one end at the lower-left of the triangle
          - other end at the upper-right

        Implicit Requirements:
        - integer must be positive
        - integer represents:
          - total row count
          - count of stars in the first row

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

Nested Array[ [] ]

__________________________________________________

* A - Algorithm

- Initialize an empty array and assign to variable named arr
- Initialize a counter variable and set equal to 0
- Iterate as many times as the integer:
  - for each iteration:
    - counter += 1
    - if counter == 1
      - sub_arr = [" ", (counter) * (*)]
      - arr << sub_arr
    - else
      - sub_arr = (counter) * (*)
      - arr << sub_arr
      - break if counter > arr.size
    end
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def triangle(number)
  arr = []
  counter = 0

  while counter < number
    counter += 1
    sub_arr = '*' * counter
    arr << sub_arr
  end 
  
  puts arr
end

triangle(5)