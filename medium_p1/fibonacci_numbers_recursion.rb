=begin

* P - [Understanding the] Problem

Problem: Write a recursive method that computes the `nth` Fibonacci number, where `nth` is an argument to the method.

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Recursive methods have three primary qualities:
            - 1) They call themselves at least once
            - 2) They have a condition that stops the recursion (n == 1 above)
            - 3) They use the result returned by themselves

        - Implicit Requirements:
          - Position starts from 1 (first two numbers in the sequence are 1)
          - Base case will be 1 or 2 (position in the Fibonacci sequence)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Fibonacci Sequence: 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

Define a single method parameter: nth

return 1 if `nth` is less than or equal to `2`

__________________________________________________

=end

#_________________________________________________

#* C - Code

# Fibonacci Sequence: 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

#_________________________________________________

# Further Explanation

=begin

I see where your confusion is coming from, and it's a good question! When we say that the base cases for our recursive Fibonacci function are when n is 1 or 2, we're referring to the "position" in the Fibonacci sequence, not the values in the sequence.

The base case doesn't mean "when the Fibonacci number is 1 or 2," but rather "when we are asking for the 1st or 2nd number in the Fibonacci sequence."

* In a recursive function `n` changes with every recursive call. Here is the breakdown:

`fibonacci(6)`, `n` would initially be `6`. From there, the function would make recursive calls, decreasing the value of `n` each time as it breaks the problem down into smaller parts until it reaches the base cases where `n` is `1` or `2`

So the correct breakdown for fibonacci(6) would look like this:

* fibonacci(6) breaks down into fibonacci(5) + fibonacci(4)
* fibonacci(5) breaks down into fibonacci(4) + fibonacci(3)
* fibonacci(4) breaks down into fibonacci(3) + fibonacci(2)
* fibonacci(3) breaks down into fibonacci(2) + fibonacci(1)

In each of these steps, the returned value from each recursive call is added together. For base cases, where n is 1 or 2, the function returns 1.

#_________________________________________________

#* Unwinding

"Unwinding" is the phase where the recursion starts to solve and combine the subproblems in order to solve the original problem. Here's how it works for fibonacci(6):

When we call fibonacci(6), we break it down into fibonacci(5) and fibonacci(4). These are recursive calls, meaning the function calls itself with these new arguments.

* Here's the breakdown of the recursive calls:

fibonacci(6) is not a base case, so it becomes fibonacci(5) + fibonacci(4).
fibonacci(5) is not a base case, so it becomes fibonacci(4) + fibonacci(3).
fibonacci(4) is not a base case, so it becomes fibonacci(3) + fibonacci(2).
fibonacci(3) is not a base case, so it becomes fibonacci(2) + fibonacci(1).
fibonacci(2) is a base case and returns 1.
fibonacci(1) is a base case and returns 1.

* Now we start "unwinding" from the base cases (walking back up from bottom to top):

fibonacci(3) has already broken down into fibonacci(2) + fibonacci(1), and we know both fibonacci(2) and fibonacci(1) return 1, so fibonacci(3) returns 1 + 1, which equals 2.

* return value of fibonacci(3) is now equal to 2

Now we know fibonacci(3), so we can solve fibonacci(4), which breaks down into fibonacci(3) + fibonacci(2), or 2 + 1, which equals 3.

* return value of fibonacci(4) is now equal to 3

Knowing fibonacci(4), we can solve fibonacci(5), which breaks down into fibonacci(4) + fibonacci(3), or 3 + 2, which equals 5.

* return value of fibonacci(5) is now equal to 5

Finally, knowing fibonacci(5) and fibonacci(4), we can solve the original problem fibonacci(6), which breaks down into fibonacci(5) + fibonacci(4), or 5 + 3, which equals 8.

* return value of fibonacci(6) is now equal to 8

The recursion breaks down the problem into manageable parts (the base cases), then combines the solutions of these parts to solve the original problem. This process of solving and combining the parts is what we mean by "unwinding".

=end