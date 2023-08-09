=begin

* P - [Understanding the] Problem

Problem: Given a method, take a positive integer `n` as an argument, and display a right triangle whose sides each have `n` stars. 

The hypotenuse of the triangle (the diagonal side) should have one end at the lower-left of the triangle, and the other end at the upper-right.

input: integer
output: string
rules:
        - Explicit Requirements:
          - Method takes a positive integer `n` as an argument, and displays a right triangle whose sides each have `n` stars.
          - The hypotenuse of the triangle (the diagonal side) should have one end at the lower-left of the triangle, and the other at the upper-right.

        - Implicit Requirements:
          - Given input will always produce a right triangle
          - Row number corresponds to `n` stars

        - Clarifying Questions:
          - N/A

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

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: size

- Initialize a loop:
  - For each iteration:
    - assign `spaces` to the return value of ' ' multiplied by the size of the input minus `iterator` minus `1`
    - assign `stars` to the return value of `*` multiplied by the `iterator` added to `1`
  - output `spaces` + `stars`
end

Pattern: On each iteration; 
  `spaces` reduces by `1`
  `stars` increases by `1`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def triangle(size)
  size.times do |i|
    spaces = ' ' * (size - i - 1)
    stars = '*' * (i + 1)
    puts spaces + stars
  end
end

# triangle(5)
# triangle(9)

#_________________________________________________

# Further Exploration: Try modifying your solution so it prints the triangle upside down from its current orientation. Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

def triangle_invert(size)
  size.times do |i|
    spaces = ' ' * (i + 1)
    stars = '*' * (size - i - 1)
    puts spaces + stars
  end
end

triangle_invert(9)

