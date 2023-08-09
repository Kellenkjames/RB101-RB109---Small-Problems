=begin

* P - [Understanding the] Problem

Problem: Rewrite your recursive `fibonacci` method so that it computes its results without recursion

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Compute previous results as a non-recursive (procedural) method
        
        - Implicit Requirements:
          - Rewrite recursive method as a non-recursive (procedural) method

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

__________________________________________________

* D - Data Structure

Array [1, 1]

__________________________________________________

* A - Algorithm

Define a single method paramater: nth

Initialize a local variable called sequence_arr and assign to [1, 1]

- Initialize a simple loop method and for each iteration:
  - assign the local variable result to the sum of the last two numbers in `sequence_arr`
  - append `result` to `sequence_arr`
- repeat the above steps until the size of sequence_arr is greater than `nth`

return `result` which is equal to the `nth` Fibonacci number

__________________________________________________

=end

#_________________________________________________

#* C - Code

def fibonacci(nth)
  sequence_arr = [1, 1]
  while sequence_arr.size < nth
    result = sequence_arr[-1] + sequence_arr[-2]
    sequence_arr << result
  end
  result
end

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501