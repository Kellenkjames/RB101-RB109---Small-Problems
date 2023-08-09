=begin

* P - [Understanding the] Problem

Problem: Given an array as input, write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order.

input: Array of strings
output: new Array of strings
rules:
        - Explicit Requirements:
          - Method will print out groups of words that are anagrams

        - Implicit Requirements:
          - Anagrams are words that have the same exact letters in them but in a different order.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

__________________________________________________

* D - Data Structure

Hash:
{
  "act" => ['cat', 'act'],
  "dgo" => ['dog', 'god']
}

__________________________________________________

* A - Algorithm

Define a single method parameter: words

Initialize a local variable called anagrams and assign to an empty Hash literal `{}`

- Iterate over `words` and for each word:
  - sort the letters in the word alphabetically to create a "sorted word".
  - check the hash to see if there is already an entry (a key-value pair) where the key is the "sorted word"
    - If there is, append the original word (not sorted) to the value associated with that key. The value should be an array, so you're effectively adding another element to this array
    - If there isn't, create a new entry in the hash where the key is the "sorted word" and the value is an array containing just the original word (not sorted)
  - repeat the above steps until all elements have been processed
end

return values in `anagrams` hash

__________________________________________________

=end

#_________________________________________________

#* C - Code

def group_anagrams(words)
  anagrams = {}

  words.each do |word|
    sorted_word = word.chars.sort.join
    if anagrams.has_key?(sorted_word)
      anagrams[sorted_word] << word 
    else
      anagrams[sorted_word] = [word]
    end
  end
  
  anagrams.each_value do |v|
    puts "------"
    p v
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

group_anagrams(words)

#_________________________________________________

# Further Exploration: Step-by-Step walkthrough

# The initial state of our hash (anagrams) is empty:
anagrams = {}

# The first word in our list is "demo". We sort the characters of "demo", resulting in "demo" again. This sorted word is used as a key in our hash. Since there is no entry in our hash with a key of "demo", we create a new entry where the key is "demo" and the value is an array containing our current word ["demo"]:
anagrams = {"demo" => ["demo"]}

# Now we move on to the next word in our list, which is "none". We sort the characters, which results in "enno". There is no entry in our hash with a key of "enno", so we create a new entry:
anagrams = {"demo" => ["demo"], "enno" => ["none"]}

# The next word is "tied". Sorted, this becomes "deit". Again, there is no key of "deit", so we add a new entry:
anagrams = {"demo" => ["demo"], "enno" => ["none"], "deit" => ["tied"]}

#* This process continues until we hit the word "dome". When we sort the characters of "dome", we get "demo". There is already an entry in our hash with a key of "demo", so we append "dome" to the array that is the value for that key:
anagrams = {"demo" => ["demo", "dome"], "enno" => ["none"], "deit" => ["tied"]}

# The key point here is that any two words that are anagrams of each other will result in the same key when their characters are sorted. 

# Therefore, if we encounter a word that, when sorted, matches a key in our hash, we know that it is an anagram of the words in the corresponding value array, and we append it to that array.