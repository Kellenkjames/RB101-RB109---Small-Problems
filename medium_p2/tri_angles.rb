=begin

* P - [Understanding the] Problem

Problem: Given a method that takes the 3 angles of a triangle as arguments, returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

input: 3 integers
output: Symbol
rules:
        - Explicit Requirements:
          - Right triangle: One angle of the triangle is a right angle (90 degrees)
          - Acute triangle: All 3 angles of the triangle are less than 90 degrees
          - Obtuse triangle: One angle is greater than 90 degrees

        - Implicit Requirements:
          - To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define the method parameters: angle1, angle2, angle3

Initialize a local variable called angles_arr and assign to a new array containing `angle1`, `angle2`, and `angle3`, then sort the array

#* Invalid triangle
return :invalid if the sum of `angles_arr` is NOT equal to `180` OR if `angles_arr` includes `0`

#* Right triangle
return :right if the count of `90` is equal to `1`

#* Acute triangle
return :acute if every angle is less than `90`

return :obtuse

__________________________________________________

=end

#_________________________________________________

#* C - Code

def triangle(angle1, angle2, angle3)
  angles_arr = [angle1, angle2, angle3].sort
  return :invalid if angles_arr.sum != 180 || angles_arr.include?(0)
  return :right if angles_arr.count(90) == 1
  return :acute if angles_arr.all? { |angle| angle < 90 }
  :obtuse
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid