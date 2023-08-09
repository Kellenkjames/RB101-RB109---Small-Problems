=begin

* P - [Understanding the] Problem

Problem: Given a method which takes an Array of integers as input, return a value which is the result of multiplying all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.

Assume the array is non-empty.

input: Array of integers
output: Single integer
rules:
        - Explicit Requirements:
          - Return value is the result of:
            - multiplying all the numbers together
            - dividing the result by the number of entries in the Array
            - prints the result rounded to 3 decimal places

        - Implicit Requirements:
          - Assume the array is non-empty

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

show_multiplicative_average([3, 5])                          # => The result is 7.500
show_multiplicative_average([6])                              # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17])     # => The result is 28361.667

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: numbers

- Iterate over `numbers` and for each number:
  - Initialize a local variable called result and assign to the product of `numbers`
    - format to a floating point number
    - divide the product by size of numbers
  end

  print the `result` rounded to 3 decimal places
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def show_multiplicative_average(numbers)
  result = (numbers.inject(:*)).to_f / numbers.size
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                               # => The result is 7.500
show_multiplicative_average([6])                                  # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17])         # => The result is 28361.667