# Odd Lists
#
# Problem: Write a method that returns an Array with every other element
# of Array passed in as an argument, ie. 1st, 3rd, 5th ... nth elements
#
# Examples:
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
#
# Data Structures: arrays
#
# Algorithm: we'll use the select function and the even? function on the array index
#
# Code:

def oddities(arr)
  arr.select.with_index { |item, idx| idx.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
