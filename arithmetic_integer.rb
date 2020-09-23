# This program prompts the user for two positive integers
# and peforms the following operations, printing to screen.
#   - addition
#   - subtraction
#   - product
#   - quotient
#   - remainder
#   - power
#
# Example:
#
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
#
# Data structure: 
#  array of symbols used to initialize hash
#  hash to hold operation sign/result as key-value pair
#
# Algorithm: 
# 1) prompt user for positive integer and assign value to a variable
# 2) repeat for second integer
# 3) initialize hash with operation symbols as keys and empty values
# 4) iterate through hash keys, using the operation symbol to perform 
#    math operation, storing the result as the hash value
# 5) display results
#

puts "==> Enter the first number (positive integer, please): "
first_int = gets.chomp.to_i

puts "==> Enter the second number (positive integer, please): "  
second_int = gets.chomp.to_i

math_operations = %w( + - * / % ** )

math_hash = Hash.new

# populate math_hash with math_operations for keys and
# values equal to the result of the operation performed on 
# user's chosen integers
math_operations.map do |operation|
  math_hash[operation.to_sym] = first_int.send operation, second_int
end

# display the results stored in math_hash
math_hash.each do |k, v|
  puts "==> #{first_int} #{k.to_s} #{second_int} = #{v}"
end
