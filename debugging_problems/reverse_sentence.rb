# Reverse Sentence

# The `reverse_sentence` method should return a new string with the words of its argument in reverse order, without using any of Ruby's built-in reverse methods. However, the code below raises an error. Change it so that it behaves as expected.

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    # reversed_words = words[i] + reversed_words
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

#_________________________________________________

=begin

Problem: The code raises and error

Fix: Both String and Array have a + method (String#+ and Array#+). The former concatenates two strings, the latter concatenates two arrays. On line 7 we mix these two types: words[i] is a string and reversed_words is an array.

* Key Concept: Recall that words[i] + reversed_words is syntactic sugar for words[i].+(reversed_words); we invoked String#+ with an array as argument, causing a TypeError to be raised.

=end