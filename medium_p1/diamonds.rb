=begin

* P - [Understanding the] Problem

Problem: Write a method that displays a 4-pointed diamond in an `n x n` grid, where `n` is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

input: integer
output: strings
rules:
        - Explicit Requirements:
          - Method will display a 4-pointed diamond in an `n x n` grid
          - `n` will be an odd integer

        - Implicit Requirements:
          - Argument will always be an odd integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: n

Initialize a local variable called count and assign to the integer `1`
Initialize a local variable called whitespace_count and assign the return value of `n` divided by `2`

output whitespace " "

#* Mini-problem: Output the rows and stars for each row
- Iterate from `1` up to `n` times and for each iteration:
  - If `iteration` is less than `n` divided by `2` plus `1` (this is the halfway point)
    - output (` ` times whitespace_count) + '*' times `count`
    - increment `count` by `2`
    - decrement `whitespace_count` by `1`
  - Else
    - output (` ` times whitespace_count) + '*' times `count`
    - decrement `count` by `2`
    - increment `whitespace_count` by `1`
  end
- repeat the above steps until `n` rows have been displayed

#* Mini-problem: Determine the spacing pattern for a 4-pointed diamond (input 9)
1st iteration:   4 whitespace chars
2nd iteration: 3 whitespace chars
3rd iteration: 2 whitespace chars
4th iteration: 1 whitespace chars
5th iteration: 0 whitespace chars (halfway point)
6th iteration: 1 whitespace chars
7th iteration: 2 whitespace chars
8th iteration: 3 whitespace chars
9th iteration: 4 whitespace chars

__________________________________________________

=end

#_________________________________________________

#* C - Code

def diamond(n)
  count = 1
  whitespace_count = n / 2
  midway = (n / 2) + 1
  puts ' '
  
  1.upto(n) do |iteration|
    if iteration < midway
      puts (' ' * whitespace_count) + '*' * count
      count += 2
      whitespace_count -= 1
    else
      puts (' ' * whitespace_count) + '*' * count
      count -= 2
      whitespace_count += 1
    end
  end

end

diamond(1)
diamond(3)
diamond(9)

# _________________________________________________

# Further Exploration: Try modifying your solution so it prints only the outline of the diamond:

def diamond_v2(n)
  count = 1
  whitespace_count = n / 2
  midway = (n / 2) + 1
  puts ' '
  
  1.upto(n) do |iteration|
    stars = '*' * count
    stars.size > 1 ? stars[1...-1] = ' ' * stars[1...-1].size : stars

    if iteration < midway
      puts (' ' * whitespace_count) + stars
      count += 2
      whitespace_count -= 1
    else
      puts (' ' * whitespace_count) + stars
      count -= 2
      whitespace_count += 1
    end
  
  end

end

diamond_v2(15)