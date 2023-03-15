=begin

* P - [Understanding the] Problem

Problem: You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed.

Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

=end

#__________________________________________

#* C - Code

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

str = 'hello world'
puts str.object_id                      # 60
puts spin_me(str).object_id     # 80

=begin

* Solution:

The method will return a #* different object.

`split` returns an array (new object) and mutating methods, i.e., reverse! only affect the substrings within the array - not the original string object passed in as an argument.

We have mutated the array that we got by splitting the string, but when we join this array back into a string, a completely new string is returned.

In this case, we can say Ruby acts like pass by value since the original object outside of the method was left unchanged.

=end

#______________________________________

#* Further Exploration:

# However, if we rework this method to use an array argument instead of a string and we reversed each word in it by calling the same methods, then the array that was passed in as an argument and the array that was returned from the method would be the #* same object.

def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id                      # 100
puts spin_me(arr).object_id     # 100