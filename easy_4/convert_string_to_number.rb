=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a String of digits, and returns the appropriate number as an integer. Do not use any of the built-in Ruby methods, i.e., `String#to_i`

input: string
output: integer
rules:
        - Explicit Requirements:
          - Method takes a String of digits and returns the appropriate number as an integer
          - No use of built-in Ruby methods is permitted 

        - Implicit Requirements:
          - Assume all characters will be numeric

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

string_to_integer('4321') == 4321
string_to_integer('570') == 570

__________________________________________________

* D - Data Structure

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

__________________________________________________

* A - Algorithm

- Initialize a constant variable named DIGITS and assign to key-value pairs of digits 0-9. 
  - keys are the string representation of each digit 
  - values is the numerical version of each digit 

Define a single method parameter: string

- Convert `string` to an array of chars and for each iteration:
  - transform the current element by returning the corresponding key in `DIGITS`
-end
  - reduce the array of integers to a single value:
    - for each iteration:
      - multiply the accumulated `sum` by `10` + `n`
    - repeat this step until iterator reaches the end of the collection
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  string.chars.map do |char|
    DIGITS[char]
  end.inject { |sum, n| sum * 10 + n }
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570

=begin

Further Explanation:

This `inject` method is passed a block that takes two arguments: `sum` and `n` : Here's how it works, step by step:

1. `inject` initializes `sum` to the first element of the array and `n` to the second.

2. Inside the block, `sum` is first multiplied by `10`. Since `sum` is initially the first digit of the string ('4'), this operation effectively moves that digit one place to the left in the final number.

3. Then `n` (which is the current digit in the array => '3') is added to `sum`: 
  - 40 + 3 = 43

4. The value of `sum` at the end of the block is carried over to the next iteration of `inject`. `n` is then assigned to the next digit in the array.

5. Steps 2 through 4 are repeated until all elements of the array have been iterated over.

6. The final value of `sum` after the last iteration is the result of the `inject` method, and it's what the method returns:

1st iteration: (4 * 10) + 3 = 43
2nd iteration (2 *10) + 1 = 21

Final return value: 4321

=end

#_________________________________________________

# Further Exploration: Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

HEXADECIMAL_VALUES = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
  'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  string.upcase.chars.map do |char|
    HEXADECIMAL_VALUES[char]
  end.inject do |sum, n|
    sum *= 16
    sum + n
  end
end

hexadecimal_to_integer('4D9f') == 19871