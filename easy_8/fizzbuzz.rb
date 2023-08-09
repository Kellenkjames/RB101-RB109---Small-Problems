=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

input: two integers
output: String
rules:
        - Explicit Requirements:
          - First argument is the starting number
          - Second argument is the ending number
          - Print out all numbers from the starting number to the ending number:
            - If a number is divisible by `3`
              - print "Fizz"
            - Elsif a number is divisible by `5`
              - print "Buzz"
            - Elsif a number is divisible by `3` and `5`
              - print "FizzBuzz"
            end

        - Implicit Requirements:
          - When printing output the starting and ending numbers are inclusive

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define two method parameters: starting_num, ending_num

Initialize a local variable called result and assign to an empty Array literal `[]`

- Iterate over the range of numbers from `starting_num` to `ending_num` and for each iteration:
  - If current number is divisible by `3` AND `5`
    - append the string 'FizzBuzz' to `result`
  - Elsif current number is divisible by `3`
    - append the string 'Fizz' to 'result'
  - Elsif current number is divisible by `5`
    - append the string 'Buzz' to 'result'
  - Else
    - append the current `number` to 'result'
  end

- return `result` and join to a String (comma separated delimiter)

__________________________________________________

=end

#_________________________________________________

#* C - Code

def fizzbuzz(starting_num, ending_num)
  result = []
  (starting_num..ending_num).each do |number|
    if number % 3 == 0 && number % 5 == 0
      result << 'FizzBuzz'
    elsif number % 3 == 0
      result << 'Fizz'
    elsif number % 5 == 0
      result << 'Buzz'
    else
      result << number
    end
  end
  result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz