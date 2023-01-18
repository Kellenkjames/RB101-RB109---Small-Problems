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
        - integer represents total row count

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

["", "", "", "", *]          4 spaces,    1 star
["", "", "", *, *]           3 spaces,    2 stars
["", "", *, *, *]            2 spaces,    3 stars
["", *, *, *, *]             1 space,     4 stars
[*, *, *, *, *]              0 spaces,    5 stars

__________________________________________________

* A - Algorithm

Initially, we will generate the left-sided triangle (default) with the first loop and then convert it to a right-side triangle with the help of the second loop.  

- Initialize empty array and assign to variable named arr
- Initialize variable named counter_one and set equal to 0
- Initialize a loop method:
  - for each iteration:
    - counter_one += 1
    - sides = '*' * counter_one
    - arr << sides
    - break if counter_one == number
end

- Initialize variable named counter_two and set equal to 0
- Initialize variable named empty_spaces and assign to the number (input)
- Initialize a loop method:
  - for each iteration:
    - empty_spaces -= 1
    - diagonals = ' ' * empty_spaces
    - arr[counter_two].prepend(diagonals)
    - counter_two += 1
    - break if counter_two == number
end 

return arr
end 

__________________________________________________

=end

#_________________________________________________

#* C - Code

def triangle(number)
  arr = []
  
  counter_one = 0
  loop do
    counter_one += 1
    sides = '*' * counter_one
    arr << sides
    break if counter_one == number
  end

  counter_two = 0
  empty_spaces = number
  loop do
    empty_spaces -= 1
    diagonals = ' ' * empty_spaces
    
    arr[counter_two].prepend(diagonals)
    counter_two += 1
    
    break if counter_two == number
  end

arr
end

puts triangle(5)
