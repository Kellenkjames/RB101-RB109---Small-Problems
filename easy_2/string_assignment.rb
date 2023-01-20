# String Assignment

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?

# BOB
# BOB

# Answer: The upcase! method mutates the calling object as well as any reference to the calling object. In this case, the variable save_name is binded to the object 'Bob'; therefore, the value is mutated the same way as the calling object.


#* Takeaway: Assignment in Ruby assigns a reference to a variable, both name and save_name refer to the same string, Bob. 