=begin

* P - [Understanding the] Problem

Problem: Given a method called `xor`, which takes two arguments, return `true` if exactly one of its arguments is truthy, `false` otherwise.

input: two integers
output: boolean
rules:
        - Explicit Requirements:
          - Method takes two arguments
          - Returns true if exactly one of its arguments is truthy, `false` otherwise

        - Implicit Requirements:
          - We are looking for a boolean result instead of a truthy/falsy value as returned by `||` and `&&`

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define two method parameters: arg1, arg2

`arg1` is truthy and `arg2` is falsy OR `arg2` is truthy and `arg1` is falsy

__________________________________________________

=end

#_________________________________________________

#* C - Code

def xor?(arg1, arg2)
  (arg1 && !arg2 || arg2 && !arg1)
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# `xor` does not and cannot have short-circuit behavior