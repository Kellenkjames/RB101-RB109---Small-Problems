# Keyword Arguments:

# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }
# 5
# 8
# => 5

=begin

Starting from `5`, each time the block is called, step by `3` until the value exceeds the integer `10`.

The method returns the calling object; the integer `5`.

=end