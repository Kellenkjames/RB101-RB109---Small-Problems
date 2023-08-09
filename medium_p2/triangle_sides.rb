=begin

* P - [Understanding the] Problem

Problem: Given a method that takes the lengths of the 3 sides of a triangle as arguments, return a symbol :equilateral, :isosceles, or :invalid depending on whethere the triangle is equilateral, isosceles, scalene, or invalid.

input: 3 integers
output: Symbol
rules:
        - Explicit Requirements:
          - A triangle is classified as follows:
            - equilateral All 3 sides are of equal length
            - isosceles 2 sides are of equal length, while the 3rd is different
            - scalene All 3 sides are of different length
          
        - Implicit Requirements:
          - To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define three method arguments: side1, side2, side3

Initialize a local variable called sides and assign to and array containing `side1`, `side2`, and `side3`, then sort the array

#* Invalid Triangle
return :invalid if the sum of the first two elements in `sides` is less than the last element OR if `0` is included in the array

#* Equilateral Triangle
# in a sorted array, if the first and last items are equal, then everything in between must be equal
return :equilateral if the first element in `sides` is equal to the last element

#* Scalene Triangle
return :scalene if the first element in sides is NOT equal to the second element AND the middle element is NOT equal to the last element

* If it's neither of the above triangles
return :isosceles

__________________________________________________

=end

#_________________________________________________

#* C - Code

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if sides[0] + sides[1] <= sides[2] || sides.include?(0)
  return :equilateral if sides[0] == sides[2]
  return :scalene if sides[0] != sides[1] && sides[1] != sides[2]
  :isosceles
end

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid