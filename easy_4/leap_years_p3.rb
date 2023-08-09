=begin

* P - [Understanding the] Problem

Problem: Given a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, computes the sum of those multiples. For example, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

input: integer
output: integer
rules:
        - Explicit Requirements:
          - Search for all multiples of 3 or 5 that lie between 1 and some other number
          - Compute the sum of those multiples

        - Implicit Requirements:
          - Some other number is the inputs

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Initialize a local variable called total and assign to `0`

- From `1` to `number` (inclusive), do the following for each number `i`:
  - If `i` is divisible by `3` or `5`
    - add `i` to `total`
  - end
- end

return `total`
__________________________________________________

=end

#_________________________________________________

#* C - Code

def multisum(number)
  total = 0
  1.upto(number) do |i|
    total += i if (i % 3 == 0 || i % 5 == 0)
  end
  total
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

#_________________________________________________

# Further Exploration: Write a solution using `Enumerable.inject`

def multisum(max_value)
  multiples_arr = []
  1.upto(max_value) do |number|
    multiples_arr << number if (number % 3 == 0 || number % 5 == 0)
  end
  multiples_arr.inject(:+)
end

# Which is clearer? Which is more succint?

#* Prefer the first solution which avoids the need for an array. The results are the same but with less memory usage.