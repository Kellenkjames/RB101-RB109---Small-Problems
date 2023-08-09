=begin

* P - [Understanding the] Problem

Problem: Given a method, return the last digit of the `nth` Fibonacci number

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Return the last digit of the `nth` Fibonacci number

        - Implicit Requirements:
          - Extend the functionality from the previous method

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

fibonacci_last(15)                     # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)                    # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)                  # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)          # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007)      # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789)    # -> 4

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Modify Helper Method: Compute the last digit of the `nth` Fibonacci number

Define a single method paramater: nth

Initialize a local variable called sequence_arr and assign to [1, 1]

- Initialize a simple loop method and for each iteration:
  - assign the local variable result to the sum of the last two numbers in `sequence_arr`
  - append `result` to `sequence_arr`
- repeat the above steps until the size of sequence_arr is greater than `nth`

convert `result` to string
  - return the character at last index and convert to integer

__________________________________________________

=end

#_________________________________________________

#* C - Code

def fibonacci(nth)
  last_two = [1, 1]
  3.upto(nth) do
    last_two = [last_two.last, (last_two.first + last_two.last) % 10]
  end
  last_two.last
end

fibonacci(20)

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

fibonacci_last(15)                      # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)                     # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)                   # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)           # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007)      # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789)     # -> 4