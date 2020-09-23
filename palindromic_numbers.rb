# Palindromic Numbers
#
# Problem: write a method that returns true if its integer argument is palindromic,
# false if it is not palindromic.
#
# Example(s):
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true
#
# Data Structures:
# convert Integer to String to be able to use String methods
#
# Algorithm:
# 1) convert integer argument to string
# 2) use String#reverse method and assign to new variable
# 3) convert back to integer
# 4) compare original and reversed integers
# 
# Code:

def palindromic_number?(integer_arg)
  string_arg = integer_arg.to_s
  reversed = string_arg.reverse
  reversed_int = reversed.to_i
  integer_arg == reversed_int
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
