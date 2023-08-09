=begin

* P - [Understanding the] Problem

Problem: Write a method that counts the number of occurrences of each element in a given array.

input: Array
output: Hash
rules:
        - Explicit Requirements:
          - Method must count each unique occurence of each string

        - Implicit Requirements:
          - The words in the array are case-sensitive: `suv` != 'SUV'

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

car => 4
truck => 3
SUV => 1
motorcycle => 2

__________________________________________________

* D - Data Structure

Hash {}

__________________________________________________

* A - Algorithm

Define a single method parameter: array

- Iterate over `array` and for each iteration (call a block that returns a hash):
  - assign the current element as the key
  - assign the number of occurences as the value
- repeat the above step until iterator reaches the end of the collection

# Complexity Time: (O(n)) meaning this method only iterates through the array only once

__________________________________________________

=end

#_________________________________________________

#* C - Code

def count_occurrences(array)
  hsh_freuqnecy = array.each_with_object(Hash.new(0)) do |string, hash|
    hash[string] += 1
  end
  puts hsh_freuqnecy
end

vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
  ]
  
count_occurrences(vehicles)

#_________________________________________________

# Further Exploration: Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV"

def count_occurrences_v2(array)
  hsh_freuqnecy = array.each_with_object(Hash.new(0)) do |string, hash|
    hash[string.downcase] += 1
  end
  puts hsh_freuqnecy
end

cryptos = [
  'bitcoin', 'Bitcoin', 'chainlink', 'solana', 'Solana', 'Chainlink',
  'chainlink', 'chainlink', 'polygon'
]

count_occurrences_v2(cryptos)