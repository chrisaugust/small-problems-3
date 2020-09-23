# This program prompts the user for 6 numbers,
# searches for the 6th number among numbers 1 through 5, 
# and prints a message with the outcome of that search.
#
# Example:
# ==> Enter the 1st number: 
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# 
# The number 17 appears in [25, 15, 20, 17, 23]
#
# Data Structure:
# We'll use an array to store the set of 5 numbers to be searched.
#
# Algorithm:
# To keep things simple, we'll do a linear search.
# Computational complexity is not a problem as our array 
# only contains 5 numbers.  
#
#

numbers_array = []

puts "==> Enter the 1st number: "
numbers_array << gets.chomp.to_i

puts "==> Enter the 2nd number: "
numbers_array << gets.chomp.to_i

puts "==> Enter the 3rd number: "
numbers_array << gets.chomp.to_i

puts "==> Enter the 4th number: "
numbers_array << gets.chomp.to_i

puts "==> Enter the 5th number: "
numbers_array << gets.chomp.to_i

puts "==> Enter the last number: "
search_num = gets.chomp.to_i

p numbers_array

hits = numbers_array.select { |num| num == search_num }

p hits

if not hits.empty? 
  puts "The number #{search_num} appears in #{numbers_array.to_s}"
else
  puts "The number #{search_num} does not appear in #{numbers_array.to_s}"
end
