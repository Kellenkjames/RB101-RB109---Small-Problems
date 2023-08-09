=begin

* P - [Understanding the] Problem

Problem: A collection of spelling blocks has two letters per block. This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

Given a method, return `true` if the word passed in as an argument can be spelled from this set of blocks, `false` otherwise.

input: String
output: Boolean
rules:
        - Explicit Requirements:
          - Only two letters per block
          - Each letter in each block can only be used once
          - If the word passed in as an argument can be spelled from this set of blocks
            - return true
          - Else
            - return false

        - Implicit Requirements:
          - Spelling blocks include all 26 letters of the alphabet
          - Standardize casing of each word before processing

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

__________________________________________________

* D - Data Structure

Array []

SPELLING_BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

__________________________________________________

* A - Algorithm

Define a single method parameter: word

Initialize a local variable called upcased_word and assign to uppercase version of `word`

- Iterate over `SPELLING_BLOCKS` and for each iteration:
  - Check that the word passed in doesn't contain two letters from any block
  - Check that no block is used more than once
- If both conditions are met, then we have a valid block word

__________________________________________________

=end

#_________________________________________________

#* C - Code

SPELLING_BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  upcased_word = word.upcase
  SPELLING_BLOCKS.none? { |block| upcased_word.count(block) > 1 }
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true