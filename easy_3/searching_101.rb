=begin

* P - [Understanding the] Problem

Problem: Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

input: integers (6)
output: string
rules:
        - Explicit Requirements:
          - Prompt the user to input 6 numbers
          - Print a message that describes whether or not the 6th number appears amongst the first 5 numbers

        - Implicit Requirements:
          - Input (string) must be converted to integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].


__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

- Initialize a local variable called numbers_arr and assign to an empty Array literal

- Ask the user to enter the 1st number:
  - Initialize a local variable called first_num
  - convert `first_num` to an integer

- Repeat the above sub-process for the 2nd, 3rd, 4th, and 5th number...

- Push `first_num`, `second_num`, `third_num`, `fourth_num`, and `fifth_num` to `numbers_arr`

- Ask the user to enter the last number:
  - Initialize a local variable called last_num
  - convert `last_num` to an integer
  
If `numbers_arr` includes `last_num`
  - Output custom message
Else
  - Output custom message
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

numbers_arr = []

puts '==> Enter the 1st number:'
first_num = gets.chomp.to_i

puts '==> Enter the 2nd number:'
second_num = gets.chomp.to_i

puts '==> Enter the 3rd number:'
third_num = gets.chomp.to_i

puts '==> Enter the 4th number:'
fourth_num = gets.chomp.to_i

puts '==> Enter the 5th number:'
fifth_num = gets.chomp.to_i

numbers_arr.push(first_num, second_num, third_num, fourth_num, fifth_num)

puts '==> Enter the last number:'
last_num = gets.chomp.to_i

if numbers_arr.include?(last_num)
  puts "The number #{last_num} appears in #{numbers_arr}."
else
  puts "The number #{last_num} does not appear in #{numbers_arr}."
end