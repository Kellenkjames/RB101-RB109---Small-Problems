=begin

* P - [Understanding the] Problem

Problem: Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is `20`, then the result should be `98` (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

input: Integer
output: Integer (new object)
rules:
        - Explicit Requirements:
          - All multiples of 3 or 5 that lie between 1 and some other number
            - Compute the sum of those multiples

        - Implicit Requirements:
          - You may assume that the number passed in is an integer greater than 1

        - Clarifying Questions:
          - What is a multiple of a number?

__________________________________________________

* E - Examples / Test Cases

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

Search for all multiples of 3 or 5 between 1 and the integer passed in as an argument:

- Initialize a local variable called `multiples_of_three` and assign to the Integer `3`
- Initialize a local variable called `multiples_of_three` and assign to the Integer `5`
- Initialize a local variable called `arr` and assign to an empty Array literal `[]`
- Initialize a `while` loop:
  - while multiples_of_three <= number
    arr << multiples_of_three
    multiples_of_three += 3
  end
- Initialize a `while` loop:
  - while multiples_of_five <= number
    arr << multiples_of_five
    multiples_of_five += 5
  end

  arr.uniq.sum
end
__________________________________________________

=end

#_________________________________________________

#* C - Code

def multisum(number)
  multiples_of_three = 3
  multiples_of_five = 5
  arr = []

  while multiples_of_three <= number
    arr << multiples_of_three
    multiples_of_three += 3
  end
  
  while multiples_of_five <= number
    arr << multiples_of_five
    multiples_of_five += 5
  end
  
  arr.uniq.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168